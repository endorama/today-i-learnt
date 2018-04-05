# Hide user from login screen
 
_Category: lightdm_
_Generated on 2018-04-06_
_source: [source][source]_

Hide account `username`, with UID > 1000.

Create file `/var/lib/AccountsService/users/username`, with content:

```
[User]
SystemAccount=true
```

[source]: https://askubuntu.com/a/575390
