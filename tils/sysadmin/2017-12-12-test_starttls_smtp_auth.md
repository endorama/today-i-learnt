# Test starttls smtp auth
 
_Category: sysadmin_
_Generated on 2017-12-12_
_source: [source]_
_source: [source2]_

If the SMTP requires STARTTLS, `telnet` can't be used.

We can use openssl:

`$ openssl s_client -starttls smtp -connect host:port -crlf -ign_eof`

to initiate and encrypted connection.

Then command `AUTH LOGIN` start auth process:

```
AUTH LOGIN
334 VXNlcm5hbWU6 ( Server returns username as a base64 string )
--base64 encoded username--
334 UGFzc3dvcmQ6 ( Server returns password as a base64 string )
--base64 encoded password--
235 Authentication succeeded
```


[source]: https://stackoverflow.com/a/21258354
[source2]: https://help.atmail.com/hc/en-us/articles/201608574-Testing-SMTP-AUTH-using-telnet
