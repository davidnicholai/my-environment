# Source: https://pimylifeup.com/raspberry-pi-docker

sudo apt update
sudo apt upgrade

curl -sSL https://get.docker.com | sh

sudo usermod -aG docker $(whoami)

echo Done, please run 'logout' then log back in.
