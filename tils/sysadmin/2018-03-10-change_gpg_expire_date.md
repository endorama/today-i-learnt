# Change gpg expire date
 
_Category: sysadmin_
_Generated on 2018-03-10_
_source: [source]_

When a key is next to expiring, you can renew it updating it's expire date.

```
$ gpg --list-secret-keys
$ gpg --edit-key <key-id>
gpg> expire
```

[source]: https://unix.stackexchange.com/a/177310
