# David's Environment Configurations

- debian-install.sh - Setup my configurations in a Debian environment (for my rpi and Ubuntu machines).
- raspbian-install-docker.sh - A script to install Docker in my rpi.
- ubuntu-install-docker.sh - A script to install Docker in my Ubuntu images.

# Tips

Any UNIX-related commands I will def forget in the future are listed below.

## Bash
- `Ctrl+W` to clear a word
- `Ctrl+U` to clear everything you've typed
- `Ctrl+L` to clear the Terminal
- [oh-my-zsh cheat sheet](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet)
- Learn more about Unix commands and scripting: http://linuxcommand.org/index.php

## Miscellaneous
To delete all files/directories inside a directory
- File: `find . -type f -name 'FILE_NAME' -exec rm -r {} +`
- Directory: `find . -type d -name 'DIRECTORY_NAME' -exec rm -r {} +`

Scan directory and delete bin/obj directories
`find . \( -name 'bin' -o -name 'obj' \) -type d -exec rm -r {} +`

To synchronize files
`rsync -av[n] SRC DEST`
Adding `n` (dry-run) will print a list of files to be transferred

To kill a process such as tmux
`pkill -f tmux`

Fix WARNING: UNPROTECTED PRIVATE KEY FILE
`sudo chmod 600 ~/.ssh/id_rsa`

To own the contents of a directory
`sudo chown -R david:david .`

Restart a service: `sudo systemctl [restart/stop/start] raspotify`

Add SSH public key to remote server: `ssh-copy-id -i /path/to/file [user@]192.168.1.123`

To mount a gpt image built from ddrescue:
```
losetup --partscan --find --show disk.img
mount /dev/loop0p1 /mnt

# to free it up, unmount then
losetup -d /dev/loop0
```

## Docker
Check out the `Dockerfile` in this repository if you need a reference.

Build image from a Dockerfile: `docker build -t DESIRED_TAG_NAME .`

Run your image: `docker run [-p 80:80] [-d/--detach] TAG_OF_BUILT_DOCKER_IMAGE`

Run command in image: `docker exec -it TAG_OF_BUILT_DOCKER_IMAGE bash`

List running containers: `docker ps [-a|--all]`

Delete a Docker container: `docker rm TAG_OF_CONTAINER`

Stop a container: `docker stop CONTAINER`

Remove unused images: `docker image prune`

List images: `docker image ls`

Delete images: `docker image rm IMAGE_ID [IMAGE_IDS]`

Maybe you want to start a new Django project but want to do everything in Docker:
```
docker run -it --volume /home/yourusername/dev/my-python-project:/app python:3.9.6 /bin/bash
```

## Pyenv Virtualenv

To create a virtualenv

`pyenv virtualenv 3.8.5 my-virtual-env-3.8.5`

List all virtualenvs

`pyenv virtualenvs`

Activate virtualenv

`pyenv activate my-virtual-env-3.8.5`

To automatically load virtualenv in the Terminal, create a file `.python-version` in the root of the project, then the contents should be:

`3.8.5`

or

`3.8.5/envs/<name_of_virtualenv>`

## Heroku
Deploy from local branch to Heroku `git push heroku <branch_name>:main`
Connecting via bash `heroku ps:exec /bin/bash`

## GNOME

Alt+tab on active workspace only

`gsettings set org.gnome.shell.app-switcher current-workspace-only true``
