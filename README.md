# TortoiseSVN wine Nemo actions
These are context menu entries for using TortoiseSVN running in wine with Nemo file manager.  If you've come from using TortoiseSVN in Windows and you want a familiar client, you can use these to regain your Windows experience.

## How to use
1. Ensure `wine` or `wine-staging` version 6.5 or later is installed.  This has been tested with `wine-staging` only.
2. Ensure `nemo` is installed.
3. Ensure `svn` is installed on the Linux side.  This is used to check svn info quickly before displaying context menu entries, to prevent showing entries that don't make sense.
3. Ensure TortoiseSVN is installed in your system default wine prefix (usually in `~/.wine/drive_c/Program Files/TortoiseSVN/`).  You can download the installer from [here](https://tortoisesvn.net/downloads.html).  This has been tested with the 64-bit version only.
4. Clone this repository somewhere with `$ git clone https://github.com/AlexFolland/tortoisesvn-wine-nemo-actions.git`.
5. Make symbolic links for the `.nemo_action` files in your local copy and move them into `~/.local/share/nemo/actions/`.
6. Right-click on a file or folder in Nemo and you should see TortoiseSVN context menu entries!
