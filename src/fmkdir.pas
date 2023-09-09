unit fMkDir;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, Controls, Forms, StdCtrls, Buttons, ExtCtrls, ButtonPanel, LCLType, Dialogs, strutils, uDebug;

type

  { TfrmMkDir }

  TfrmMkDir = class(TForm)
    pnlMkDir: TPanel;
    ButtonPanel: TButtonPanel;
    cbExtended: TCheckBox;
    cbMkDir: TComboBox;
    lblExample: TLabel;
    lblMakeDir: TLabel;
    btnAutoComplete: TSpeedButton;
    mDirList: TMemo;

    procedure cbExtendedChange(Sender: TObject);
    procedure cbMkDirChange(Sender: TObject);
    procedure cbMkDirKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAutoCompleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mDirListKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RefreshExample;
  public

  end;

function ShowMkDir(TheOwner: TComponent; var sPath:String; var sPathList: TStringList): Boolean;

implementation

{$R *.lfm}

uses
  DCStrUtils, uGlobs;

function sReplace(sMask: string): string;
var
  iStart, iEnd: integer;
begin
  Result := '';
  while Length(sMask) > 0 do
  begin
    iStart := Pos('[', sMask);
    if iStart > 0 then
    begin
      iEnd := Pos(']', sMask);
      if iEnd > iStart then
      begin
        Result := Result + Copy(sMask, 1, iStart - 1) +
                  FormatDateTime(Copy(sMask, iStart + 1, iEnd - iStart - 1), Now);
        Delete(sMask, 1, iEnd);
      end
      else
        Break;
    end
    else
      Break;
  end;
  Result := Result + sMask;
end;

procedure TfrmMkDir.RefreshExample;
var
  sPath: String;
begin
  if not cbExtended.Checked then
    lblExample.Caption:= ' '
  else begin
    sPath:= TrimPath(cbMkDir.Text);
    if StrBegins(sPath, '<') then
      lblExample.Caption:= sReplace(Copy(sPath, 2, MaxInt))
    else
      lblExample.Caption:= ' '
  end;
end;

procedure TfrmMkDir.cbMkDirKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  RefreshExample;
end;

procedure TfrmMkDir.btnAutoCompleteClick(Sender: TObject);
begin
  cbMkDir.AutoComplete:= btnAutoComplete.Down;
end;

procedure TfrmMkDir.FormCreate(Sender: TObject);
begin
  InitPropStorage(Self).IniSection:= ClassName;
end;

procedure TfrmMkDir.cbExtendedChange(Sender: TObject);
begin
  RefreshExample;
end;

procedure TfrmMkDir.cbMkDirChange(Sender: TObject);
var
  Index: Integer;
begin
  Index:= cbMkDir.ItemIndex;
  if (Index >= 0) then begin
    cbExtended.Checked:= Boolean(UIntPtr(cbMkDir.Items.Objects[Index]));
  end;
end;

function ShowMkDir(TheOwner: TComponent; var sPath: String; var sPathList: TStringList): Boolean;
const
  MAX_LINES = 20;
var
  Index: Integer;
  Syntax: TObject;
  i: Integer;
  dirListItem: String;
begin
  with TfrmMkDir.Create(TheOwner) do
  try
    mDirList.Text := '';

    ActiveControl := cbMkDir;
    cbMkDir.Items.Assign(glsCreateDirectoriesHistory);
    if (sPath <> '..') then
      cbMkDir.Text := sPath
    else begin
      cbMkDir.Text := '';
    end;

    RefreshExample;
    cbMkDir.SelectAll;
    Result := (ShowModal = mrOK);

    if Result then
    begin
      sPath := TrimPath(cbMkDir.Text);
      Syntax := TObject(UIntPtr(cbExtended.Checked));

      glsCreateDirectoriesHistory.CaseSensitive := FileNameCaseSensitive;
      Index := glsCreateDirectoriesHistory.IndexOf(sPath);

      if (Index = -1) then
        glsCreateDirectoriesHistory.InsertObject(0, sPath, Syntax)
      else begin
        glsCreateDirectoriesHistory.Move(Index, 0);
        glsCreateDirectoriesHistory.Objects[0]:= Syntax;
      end;

      if (glsCreateDirectoriesHistory.Count > MAX_LINES) then
        glsCreateDirectoriesHistory.Delete(glsCreateDirectoriesHistory.Count - 1);

      if cbExtended.Checked and StrBegins(sPath, '<') then
      begin
        sPath := lblExample.Caption;
      end;

      if mDirList.Lines.Count = 0 then
      begin
        sPathList.Add(sPath);
      end
      else
      begin
        for i:=0 to mDirList.Lines.Count-1 do
        begin
          dirListItem := mDirList.Lines[i].Trim;
          if Length(dirListItem) <> 0 then
            sPathList.Add(dirListItem);
        end;
      end;
    end;
  finally
    Free;
  end;
end;

procedure TfrmMkDir.mDirListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = VK_RETURN) then
  begin
    ModalResult:=mrOK;
    Key:=0;
  end;
end;

end.
