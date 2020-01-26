# How to install arch

Boot into Arch Install ISO

    loadkeys de-latin1-nodeadkeys

    gdisk /dev/sda

Create 2 Partitions, one with 512M type EF00 (EFI) and one with the remaining space type 8308 (dm-crypt)

    mkfs.vfat -F 32 -n EFI /dev/sda1
    cryptsetup luksFormat -c aes-xts-plain64 -s 512 -y /dev/sda2
    cryptsetup luksOpen /dev/sda2 main

Thats the complete Encryption-Setup. Lets create our LVM and BTRFS Setup:

    pvcreate /dev/mapper/main
    vgcreate main /dev/mapper/main

    lvcreate -L 2GB -L p_swap swap
    lvcreate -l 100%FREE -L p_root root

    swapon /dev/mapper/main-swap

    mount /dev/mapper/main-root /mnt

    btrfs subvol create /mnt/@
    btrfs subvol create /mnt/@home
    btrfs subvol create /mnt/@log
    btrfs subvol create /mnt/@pkg
    btrfs subvol create /mnt/@snapshots

    umount -R /mnt

Thats all. We have an LVM Volume with our Swap-Partition in it and our BTRFS Subvolumes. Time to create Folders and Mount everything

    mount /dev/mapper/main-root -o subvol=@ /mnt

    mkdir -p /mnt/{boot/EFI,home,var/log,var/cache/pacman/pkg,.snapshots,.btrfs}

    mount /dev/sda1 /mnt/boot/EFI

    mount /dev/mapper/main-root -o subvol=@home /mnt/home
    mount /dev/mapper/main-root -o subvol=@snapshots /mnt/.snapshots
    mount /dev/mapper/main-root -o subvol=@log /mnt/var/log
    mount /dev/mapper/main-root -o subvol=@pkg /mnt/var/cache/pacman/pkg
    mount /dev/mapper/main-root /mnt/.btrfs

So we have mounted everything. Last step is bootstrap our Base-System, creating an fstab and chroot into the system

    pacstrap /mnt base base-devel btrfs-progs vim zsh git linux-zen linux-zen-headers linux-firmware lvm2 cryptsetup filesystem

    genfstab -U /mnt >> /mnt/etc/fstab

    arch-chroot /mnt

Now you are already in the new System. Time to configure everything, so we can boot and login

    # set hostname
    echo arch-encrypted >> /etc/hostname

    # set root password
    passwd

    # set timezone
    ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

    # configure locale configuration
    echo LANG=de_DE.UTF-8 >> /etc/locale.conf
    echo LANGUAGE=de_DE >> /etc/locale.conf
    echo LC_ALL=C >> /etc/locale.conf

    # setting up locales
    sed -i s/#de_DE.UTF-8/de_DE.UTF-8/
    locale-gen

    # setting up keymap
    echo KEYMAP=de-latin1-nodeadkeys >> /etc/vconsole.conf
