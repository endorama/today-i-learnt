# Change ssh key passphrase
 
_Category: sysadmin_
_Generated on 2018-02-15_
_source: [source]_

```
$ ssh-keygen -p -f ~/.ssh/id_rsa
```

where:

- `-f`: specifies filename
- `-p`: specifies password change request, instead of new key creation

[source]: https://serverfault.com/a/50778
