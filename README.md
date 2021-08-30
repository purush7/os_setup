# pc_workenv

It covers the installation of arch and the packages needed

Process:

Installation:

```
# use fdisk

## partitions
## /efi -  1G
## swap - 10G
## / - 120G
## /home - remaining

# reflector -c "IN" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

# swapon /dev/swap
# mount /dev/sda /mnt
# mount /dev/sda /mnt/home
# mkdir -p /mnt/boot/efi
# mount /dev/efi /mnt/boot/efi

wget https://raw.githubusercontent.com/purush7/arch_installation/main/installation.sh -O - | bash

```

PostInstallation:

```
# install monaco as system font
# install Ubuntu Nerd Font

https://raw.githubusercontent.com/purush7/arch_installation/main/postinstallation.sh -O - | bash

## install password manager
## generate ssh-key and store it in github
## dotfiles
## vscode

```
