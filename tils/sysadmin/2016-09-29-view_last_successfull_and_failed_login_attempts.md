# View last successfull and failed login attempts
 
_Category: sysadmin_
_Generated on 2016-09-29_

_source: https://opensource.com/business/16/6/managing-passwords-security-linux_

The `last` command shows the number of successfull login attempts.
It writes to `/var/log/wtmp`.

The `lastb` command shows the number of **unsuccessful** login attempts.
It writes to `/var/log/btmp`.

If this file have been zeroed out, you have a problem.
