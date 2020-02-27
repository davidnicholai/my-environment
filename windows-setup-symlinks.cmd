@echo Please run me in an administrator command prompt

mklink %userprofile%\AppData\Roaming\Code\User\keybindings.json .\vscode-keybindings.json
mklink %userprofile%\AppData\Roaming\Code\User\settings.json .\vscode-settings.json

mklink %userprofile%\Apps\cmder\config\user_aliases.cmd .\user_aliases.cmd

mklink %userprofile%\.vimrc .\vimrc
