# Disable systemd service manually
 
_Category: sysadmin_
_Generated on 2017-06-23_
_[source][til-source]_


[til-source]: https://unix.stackexchange.com/a/197681



`systemctl enable` works by manipulating symlinks in /etc/systemd/system/ 
(for system daemons). When you enable a service, it looks at the `WantedBy` 
lines in the `[Install]` section, and plops symlinks in the `.wants`directory 
of the specified service.

systemctl disable does the opposite.

Just remove those symlinks.


