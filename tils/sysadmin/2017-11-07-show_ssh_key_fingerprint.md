# Show ssh key fingerprint
 
_Category: sysadmin_
_Generated on 2017-11-07_
_source: [source]_


```
$ ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub
2048 00:11:22:33:44:55:66:77:88:99:aa:bb:cc:dd:ee:ff /Users/username/.ssh/id_rsa.pub (RSA)
```

`-E md5` shows fingerprint in MD5 format ( otherwise uses SHA256 )


[source]: https://stackoverflow.com/questions/9607295/how-do-i-find-my-rsa-key-fingerprint
