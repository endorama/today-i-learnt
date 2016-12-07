# Show processes using files
 
_Category: sysadmin_
_Generated on 2016-12-07_
_source: [1]_

```
$ fuser /home/endorama
/home/endorama:       1820c  1921c  1939c  1973c  1978c  1985c  1987c  2000c  2022c  2034c  2036c  2043c  2047c  2078c  2080c  2084c  2085c  2086c  2087c  2089c  2093c  2123c  2160c  2176c  2214c  2215c  2220c  2221c  2224c  2226c  2228c  2234c  2236c  2240c  2242c  2249c  2250c  2768c  3960c  4780c  4816c  4870c  5457c  5589c  5604c  7089c  7093c  7119c 10187c 10194c 11426c 12856c 19480c 19570c 20014c 32360c 32368c
```

Flags:

- c - current directory.
- e - executable being run.
- f - open file. f is omitted in default display mode.
- F - open file for writing. F is omitted in default display mode.
- r - root directory.
- m - mmap'ed file or shared library.

```
$ fuser -v  /home/endorama
                     USER PID ACCESS COMMAND
/home/endorama:      endorama  ..c.. upstart
                     endorama  ..c.. window-stack-br
                     endorama  ..c.. ibus-daemon
                     endorama  ..c.. upstart-file-br
                     endorama  ..c.. ibus-dconf
                     endorama  ..c.. ibus-ui-gtk3
                     endorama  ..c.. ibus-x11
                     endorama  ..c.. bamfdaemon
                     endorama  ..c.. ibus-engine-sim
                     endorama  ..c.. hud-service
                     endorama  ..c.. unity-settings-
                     endorama  ..c.. gnome-session-b
```

To kill processes use the `-k` swith, make it interactive with `-i`.

```
$ fuser -v -k -i /home/endorama
```

[1]: https://www.howtoforge.com/tutorial/linux-fuser-command/

