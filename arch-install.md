# Arch Installation

Choose 32bit.

`loadkeys dvorak`

GPT formatted disk (`gdisk`)
2G swap (8200)
18G root (8300)

`mkswap /dev/sda1`
`swapon /dev/sda1`

`mkfs.ext4 /dev/sda2`
`mount /dev/sda2 /mnt`

`pacstrap /mnt base base-devel`

`genfstab -U -p /mnt >> /mnt/etc/fstab`

`arch-chroot /mnt /bin/bash`

`nano /etc/locale.gen`
Uncomment the line "en_US.UTF-8 UTF-8"
`locale-gen`
`echo LANG=en_US.UTF-8 > /etc/locale.conf`
`export LANG=en_US.UTF-8`

`echo KEYMAP=dvorak >> /etc/vconsole.conf`
`echo FONT=Lat2-Terminus16 >> /etc/vconsole.conf`

`echo archdevbox > /etc/hostname`

`passwd`

`pacman -S gptfdisk syslinux`

`syslinux-install_update -i -a -m`

`exit`

`umount /mnt`

`reboot`

Create snapshot.
Log in to root.

`useradd -m -g users -s /bin/bash robbs`
`passwd robbs`
`usermod -a -G wheel robbs`

Log in as robbs.

`sudo pacman -S xorg-server xorg-xinit xorg-server-utils virtualbox-guest-utils xterm git subversion i3 vim chromium dmenu openssh rxvt-unicode wget unzip xclip jdk7-openjdk` (choose Droid font)

`sudo modprobe -a vboxguest vboxsf vboxvideo`

Create /etc/modules-load.d/virtualbox.conf with these lines:
vboxguest
vboxsf
vboxvideo

Create ~/.xinitrc with these lines:
VBoxClient-all &
setxkbmap dvorak
exec i3

`startx` should now work.

Generate a ssh key with `ssh-keygen -t rsa -C "robby.ronk@gmail.com"`. Put that on the servers that you need to log in to.

Install Lastpass, IntelliJ.

If IntelliJ complains about missing libgif.so.4, run `pacman -S libungif`.

Link the IntelliJ startup script: `ln ~/idea*/bin/idea.sh ~/bin/ -s`




