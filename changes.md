echo "apt install packages"
## Todo Create a prompt


## enable ssh
systemctl status ssh
systemctl enable ssh
systemctl start ssh

## add user
addgroup wheel
adduser pi
usermod -aG sudo wheel pi

### To check groups 
id pi

### To login as user 
su - pi

## add hostname and link the hosts
echo "rpi4" >> /etc/hostname
echo "127.0.0.1	rpi4" >> /etc/hosts

<----- Can access remotely ----->0

## for no password

pi (ALL:ALL) NOPASSWD:ALL <commands only for specified>

## change shell
sudo chsh purush /usr/bin/zsh

## generate ssh key and copy it
ssh-keygen -t ed25519 -C "mailID"
cat .ssh/\*.pub
echo "copy the contents to github"

## Pre-requistes
echo "install zsh autosuggestions, zsh syntax-highlighting and ohmyzsh"
echo "clone dotfiles and os_setup"
echo "install powerlevel10k"
echo "copy the .shconfig and some files"
echo "create new branch for dotfiles and in os_setup"
dotfiles 

## Install docker
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
echo "To check docker"
sudo docker run hello-world

## Add timezone and locale

sudo timedatectl set-timezone Asia/Kolkata
sudo timedatectl set-ntp true
timedatactl status

sudo apt install locales
locale-gen
echo "uncomment en_US.UTF-8 in /etc/locale.gen"
echo "LANG=en_US.UTF-8" > /etc/locale.conf
locale-gen
echo "logout and login"

## TODO

- [ ] Automate to install packages from packages.list create a new prompt y/n at the start
- [ ] Change capslock with Escape
- [x] Add necessary packages
- [x] copy the dot-files
- [x] Add docker
- [ ] Change owner of docker
- [ ] Remove autostart of docker and find docker engine components
- [ ] Automatically mount hard-disks
- [ ] wifi packages
- [ ] static ip
- [ ] how to add all devices except few in hosts.deny
- [ ] Create a clipboard in go which writes into /tmp/clipfile and reads from it.
- [ ] Finally, convert changes.md to installation_script.sh
