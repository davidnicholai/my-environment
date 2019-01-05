## Bash
`Ctrl+W` to clear a word
`Ctrl+U` to clear everything you've typed
`Ctrl+L` to clear the Terminal

## Miscellaneous
To delete all files/directories inside a directory
File: `find . -type f -name 'FILE_NAME' -exec rm -r {} +`
Directory: `find . -type d -name 'DIRECTORY_NAME' -exec rm -r {} +`

Scan directory and delete bin/obj directories
`find . \( -name 'bin' -o -name 'obj' \) -type d -exec rm -r {} +`
