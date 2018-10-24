# Arch Linux installation

## Load keyboard translation rules
```
loadkeys sv-latin1
```

## Enable ntp
```
timedatectl set-ntp true
```

## Partiton disk
* +512M for /boot
* rest for /

```
fdisk /dev/sda
```

## Initialize LUKS and create filesystems
```
mkfs.vfat -F32 /dev/sda1
cryptsetup luksFormat --hash sha512 /dev/sda2
cryptsetup open /dev/sda2 root
mkfs.ext4 /dev/mapper/root
mount /dev/mapper/root /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
```

## Install base and grub
```
pacstrap /mnt base grub
```

## Generate fstab
```
genfstab -p /mnt >> /mnt/etc/fstab
echo "tmpfs /tmp tmpfs defaults,noatime,noexec,nosuid,nodev,mode=1777 0 0" >> /mnt/etc/fstab
```

## Configure time and locale
```
arch-chroot /mnt
ln -sf /usr/share/zoneinfo/Europe/Stockholm /etc/localtime
hwclock --systohc --utc
echo KEYMAP=sv-latin1 > /etc/vconsole.conf
sed -i s/^#en_US.UTF-8/en_US.UTF-8/ /etc/locale.gen
locale-gen
```

## Set hostname
```
echo hostname > /etc/hostname
```

## Set root password
```
passwd
```

## Configure and install GRUB
Edit `/etc/default/grub`

```
GRUB_TIMEOUT=0
GRUB_CMDLINE_LINUX="cryptdevice=/dev/sda2:root"
```

```
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
```

## Create initial ramdisk environment
Edit `/etc/mkinitcpio.conf`

```
MODULE=(ext4)
HOOKS=...encrypt filesystems...
```

```
mkinitcpio -p linux
```

## Unmount and reboot
```
exit
umount /mnt
umount /mnt/boot
cryptsetup close root
reboot
```
