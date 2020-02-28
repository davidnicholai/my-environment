@echo Please run me in an administrator command prompt

mklink %userprofile%\AppData\Roaming\Code\User\keybindings.json %~dp0vscode-keybindings.json
mklink %userprofile%\AppData\Roaming\Code\User\settings.json %~dp0vscode-settings.json

mklink %userprofile%\Apps\cmder\config\user-aliases.cmd %~dp0user-aliases.cmd

mklink %userprofile%\.vimrc %~dp0vimrc
