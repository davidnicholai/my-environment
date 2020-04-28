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

To synchronize files
`rsync -av[n] SRC DEST`
Adding `n` (dry-run) will print a list of files to be transferred

To kill a process such as tmux
`pkill -f tmux``

Fix WARNING: UNPROTECTED PRIVATE KEY FILE
`sudo chmod 600 ~/.ssh/id_rsa`

Restart a service: `sudo systemctl [restart/stop/start] raspotify`

# Add SSH public key to remote server
`ssh-copy-id -i /path/to/file [user@]192.168.1.123`

# Docker
Build image from a Dockerfile: `docker build -t DESIRED_TAG_NAME .`
Run your image: `docker run [-p 80:80] -d TAG_OF_BUILT_DOCKER_IMAGE
Run command in image: `docker exec -it TAG_OF_BUILT_DOCKER_IMAGE bash`
List running containers: `docker ps`
Delete a Docker container: `docker rm TAG_OF_CONTAINER`
