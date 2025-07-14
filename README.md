# Double Commander [Rebuild]

A custom build of the file manager [**Double Commander**](https://github.com/doublecmd/doublecmd).

## Changes

### New Commands
- `cm_JumpToPrevTabInStack` - switch to the previous tab in history
- `cm_MaximizePanel` - maximize active panel
- `cm_OpenParentFolderExternal` - open parent folder in the explorer
- `cm_ChangeDirToNextSibling`, `cm_ChangeDirToPrevSibling` - navigate to the next/previous sibling folder
- `cm_ToggleFreeSorting` - free sorting mode (the files are not sorted automatically after renaming)
- `cm_ToggleAliasMode` - alias mode (the command line text field can be used to execute saved aliases, see a note below)
- `cm_RenameFilesWithEditor` - rename multiple files using an external editor
- `cm_CreateFile` - create a new file

### Modified Commands
- `cm_Edit` - parameter `UseInternal` to force open a file in the internal editor
- `cm_Copy` - parameters `CopyFoldersOnly` and `CopyTopFoldersOnly` to copy only folders without files (recursively or only the selected folders)
- `cm_Delete` - parameter `SkipErrors` to prevent error dialog when deleting files
- `cm_MarkCurrentExtension` - works with folders

### Other
- added info to the operations dialogs, with the format "Current: [processed_file_size/total_file_size] :: Total: [all_processed_size/all_total_size]"
- fast scroll lists with `Ctrl+PageUp/PageDown`
- the **..** item does not appear in the grid (except for the empty folders)
- new column in the file grid to show the stats for each folder (number of folders and files)
- independent stats dialog with the **Copy** button
- draw numbers for drive buttons
- delete read-only files without asking
- tab height increased
- when copying folders with the same name between panels, always merge without asking
- static black color for the cursor background of an item in a selection
- quick view works for folders
- in the create folder dialog, multiple folders can be created, using the new text field and `Ctrl+Enter`
- when duplicating files in the same folder, always use the pattern 'file-counter'
- when executing go-to-parent command in a drive root (left arrow), the first item is selected (home key trigger)
- quick search/filter is resetting the default options when the search form is shown
- delete dialog for WFX plugins (like FTP, ADB) is not blocking the UI during the operation
- quick search allows to ignore some characters at the beginning, such as "\_-."

---

## Download

### [Original Releases](https://github.com/doublecmd/doublecmd/releases)

### [ 1.2.1 ]
#### 1.2.1 - Rebuild 1
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.2.1-RB1/doublecmd-1.2.1-RB1-rebuild-x64.zip) **(14.5 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.2.1-RB1/doublecmd-1.2.1-RB1-rebuild-x32.zip) **(13.8 MB)**


### [ 1.2.0 ]
#### 1.2.0 - Rebuild 3
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.2.0-RB3/doublecmd-1.2.0-RB3-rebuild-x64.zip) **(14.4 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.2.0-RB3/doublecmd-1.2.0-RB3-rebuild-x32.zip) **(13.7 MB)**

#### 1.2.0 - Rebuild 2
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.2.0-RB2/doublecmd-1.2.0-RB2-rebuild-x64.zip) **(14.4 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.2.0-RB2/doublecmd-1.2.0-RB2-rebuild-x32.zip) **(13.7 MB)**

#### 1.2.0 - Rebuild 1
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.2.0-RB1/doublecmd-1.2.0-RB1-rebuild-x64.zip) **(12.7 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.2.0-RB1/doublecmd-1.2.0-RB1-rebuild-x32.zip) **(12.0 MB)**


### [ 1.1.0 ]
#### 1.1.0 - Rebuild 5
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB5/doublecmd-1.1.0-RB5-rebuild-x64.zip) **(11.6 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB5/doublecmd-1.1.0-RB5-rebuild-x32.zip) **(10.8 MB)**

#### 1.1.0 - Rebuild 4
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB4/doublecmd-1.1.0-RB4-rebuild-x64.zip) **(11.6 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB4/doublecmd-1.1.0-RB4-rebuild-x32.zip) **(10.8 MB)**

#### 1.1.0 - Rebuild 3
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB3/doublecmd-1.1.0-RB3-rebuild-x64.zip) **(11.6 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB3/doublecmd-1.1.0-RB3-rebuild-x32.zip) **(10.8 MB)**

#### 1.1.0 - Rebuild 2
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB2/doublecmd-1.1.0-RB2-rebuild-x64.zip) **(11.6 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB2/doublecmd-1.1.0-RB2-rebuild-x32.zip) **(10.8 MB)**

#### 1.1.0 - Rebuild 1
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB1/doublecmd-1.1.0-RB1-rebuild-x64.zip) **(11.0 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/1.1.0-RB1/doublecmd-1.1.0-RB1-rebuild-x32.zip) **(10.2 MB)**

*Versions built from the older SVN repository*

### [ 0.9.8-r9293 ]
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/0.9.8-r9293/doublecmd-0.9.8-9293-rebuild-x64.zip) **(10.7 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/0.9.8-r9293/doublecmd-0.9.8-9293-rebuild-x32.zip) **(9.99 MB)**

### [ 0.8.0-r7623 ]
- [x64](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/0.8.0-r7623/doublecmd-0.8.0-7623-rebuild-x64.zip) **(24.2 MB)**
- [x32](https://github.com/mortalis13/DoubleCommander-Rebuild/releases/download/0.8.0-r7623/doublecmd-0.8.0-7623-rebuild-x32.zip) **(23.2 MB)**

---

## Changelog

### 1.2.1 - Rebuild 1
- adaptation for dev version 2025 (next items rename with arrows)
- using built-in separator param to copy paths
- command for creating files (cm_CreateFile)
- copying folders only skips recursive tree building
- maximizing right panel, the drives panel moves to the border

### 1.2.0 - Rebuild 3
- select first file on go to parent command in the root

### 1.2.0 - Rebuild 1
- adaptation for dev version 2023 (dark mode)
- fixed unicode chars showing as ? in title bar in dark mode
- fixed viewer scaling for multiple monitors

### 1.1.0 - Rebuild 5
- multirename if case is changed

### 1.1.0 - Rebuild 4
- preserve height for disk space label when entering archives
- small changes to dpi handling for icons and fonts

### 1.1.0 - Rebuild 3
- fixes/features for the multi-rename-with-editor operation
  - prevent renaming if a file exists
  - always write log
  - prevent deletion of temp file (used for editing the file names)
  - the waiting dialog does not block the main window
  - use active file if no files are selected
- the free space label is not showed if free and total size are 0 (used in views for archives, VFS etc.)

### 1.1.0 - Rebuild 2
- support for multiple monitors [beta]
- save main window coordinates when it's maximized
- removed some buttons from the drive toolbar (go to root, parent dir, home)

### 1.1.0 - Rebuild 1
- the initial release with new features
  - maximize panel
  - remove .. item
  - separate stats dialog
  - folder stats column
  - fast scroll
  - copy folders only
  - copy paths with unix separator
  - rename files in external editor
  - create multiple folders


## Notes

### Aliases
*Borrowed from the MultiCommander manager*

To use command aliases, create a file **aliases.txt** in the Double Commander profile folder and add text with the format **`[alias] [command]`**.  
For example, **`dd cd C:\Users\Me\Documents`**.  
Then enter the alias in the **command line** within Double Commander and press Enter to execute the command.


## Build

1. Install [Lazarus 2.2.6](https://www.lazarus-ide.org/index.php?page=downloads)
2. Install **Cross Compilation Addon**. Go to the **Windows (64 Bits) Add ons** link on the **Downloads** page and get the installer named **...cross-i386-win32...**
3. In the **r.bat** modify `lazpath` and `BUILD_OS` variables
4. Run from the console `r all`

- To rebuild the code if build errors occur run `r rebuild`
- To build the final ready to use executables (x32 and x64) run `r pack`
