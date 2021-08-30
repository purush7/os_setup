## Preinstallation script after changing the arch root

timedatectl list-timezones
timedatectl set-timezone Asia/Kolkata
hwclock --systohc
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "myarch" >> /etc/hostname
echo "127.0.0.1	localhost" >> /etc/hosts
echo "::1	localhost"  >> /etc/hosts
echo "127.0.1.1	    myhostname.localdomain	myhostname" >> /etc/hosts

passwd

# for booting
pacman -Syyy grub efi-bootmgr os-prober --noconfirm --needed
os-prober
grub-install --target=x86_64-efi --bootloader-id=myarch --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg


# gnome and network utilities
pacman -Syyy gnome gnome-tweaks networkmanager dhcpcd --noconfirm --needed

# enable the services required
systemctl enable gdm
systemctl enable dhcpcd
systemclt enable NetworkManager