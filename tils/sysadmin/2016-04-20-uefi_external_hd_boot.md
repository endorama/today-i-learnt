# Uefi external hd boot
 
_Category: sysadmin_
_Generated on 2016-04-20_

_source: https://askubuntu.com/questions/559007/is-it-still-possible-to-install-ubuntu-to-an-external-harddrive-with-uefi_

EFI System Partitions = ESP

## add ESP to existing MBR

1. Install the `grub-efi-amd64-bin` package
1. Shrink you partition to create a new ESP partition of 100-500MB  
  It shouldn't matter where your ESP is located on the disk and shrinking your Ubuntu partition by a few megabytes from the end should be quick and safe. One caveat though, your ESP should be a primary partition and not be part of an extended partition or a logical volume, partition numbers from 1 to 4 are fine, numbers above indicate an extended partition on MBR partition tables.
  Choose FAT32 as filesystem and set the boot flag.
1. mount ESP and root filesystem  

  ```
  mkdir -p /mnt/esp
  mount {/dev/sdb1} /mnt/esp
  mkdir -p /mnt/rootfs
  mount {/dev/sdb2} /mnt/rootfs
  ```
1. install grub  
  `grub-install --efi-directory /mnt/esp --boot-directory /mnt/rootfs/boot --target x86_64-efi --removable $device`

  Note that $device is the whole device e.g. /dev/sdb, not a partition.

  The parameter `--target x86_64-efi` will ensure that UEFI images and modules will be installed to the given paths.
  `--removable` will install the UEFI image to the hardcoded path `\EFI\BOOT\BOOT{arch}.EFI` for removable media, instead of a distribution specific path.
  Your grub.cfg in `/boot/grub/` should work with both boot methods.

## add ESP to existing GPT

1. Install the `grub-efi-amd64-bin` package.
1. Create a partition with a FAT32 filesystem similar to the instructions above by resizing the root partition and set the boot flag.
1. Mount the partitions and run the grub-install command from above that includes the `--removable` parameter.

This also works if you just want to boot your exisitng UEFI installation on another computer.