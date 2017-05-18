# Create encrypted partition
 
_Category: sysadmin_
_Generated on 2017-05-18_
_source: [source]_

_tested on Ubuntu 16.04_

Follow the source guide, but see this notes:

- after creating partition with `fdisk`, run `sudo partprobe` to update
partitions known to kernel
- when enabling kernel module, you get a warning.
  To remove it follow the suggestion in the guide and then blacklist a module:  
  create `/etc/modprobe.d/blacklist-padlock.conf` and add  
      blacklist padlock_aes
      blacklist padlock_sha
- before unmounting the volume, run a `sudo sync` to be shure that everything 
has been properly written

Detach and reattach the media, and perform a manual mount.  
Detach and reattach the media, now Gnome should properly prompt for unlock password.

[source]: https://help.ubuntu.com/community/EncryptedFilesystemsOnRemovableStorage#Expert_setup_using_command_line_only
