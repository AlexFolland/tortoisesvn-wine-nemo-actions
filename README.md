# TortoiseSVN wine Nemo actions
These are context menu entries for using TortoiseSVN running in wine with Nemo file manager.  If you've come from using TortoiseSVN in Windows and you want a familiar client, you can use these to regain your Windows experience.

## How to use
1. Ensure `wine` or `wine-staging` version 6.5 or later is installed.  This has been tested with `wine-staging` only.
2. Ensure `nemo` is installed.
3. Ensure `subversion` is installed on the Linux side.  The native Linux `svn` tool is used to check svn info quickly before displaying context menu entries.  This is to prevent showing entries that don't make sense.
3. Ensure TortoiseSVN is installed in your system default wine prefix (usually in `~/.wine/drive_c/Program Files/TortoiseSVN/`).  You can download the installer from [here](https://tortoisesvn.net/downloads.html).  This has been tested with the 64-bit version only.
4. Clone this repository somewhere with `$ git clone https://github.com/AlexFolland/tortoisesvn-wine-nemo-actions.git`.
5. Make symbolic links for the `.nemo_action` files in your local copy and move them into `~/.local/share/nemo/actions/`.
6. Right-click on a file or folder in Nemo and you should see TortoiseSVN context menu entries!

# General workarounds for other TortoiseSVN wine issues
These are known issues with TortoiseSVN in wine as of 2021-03-24, so applying a workaround for each of the issues described here is recommended for TortoiseSVN to function as expected.
## **Issue:** [TortoiseMerge doesn't start.](https://bugs.winehq.org/show_bug.cgi?id=50778)
### **Workaround option 1**
Disable the ribbon UI in TortoiseMerge by creating DWORD "HKCU\Software\\TortoiseMerge\\UseRibbons" and setting it to FALSE.
### **Workaround option 2**
1. Copy the following DLL files from a Windows installation to ~/.wine/drive_c/windows/system32/

    - C:\Windows\System32\UIRibbon.dll
    - C:\Windows\System32\UIRibbonRes.dll
    - C:\Windows\System32\uxtheme.dll
    - C:\Windows\System32\propsys.dll

2. Rename them to lower-case versions.
3. Set them to be used as overrides in winecfg.
## **Issue:** Text is invisible in the editable text field in the commit menu.
### **Workaround**
In TortoiseSVN advanced settings, disable the Direct2D-rendered Scintilla text field by setting ScintillaDirect2D to "false".
