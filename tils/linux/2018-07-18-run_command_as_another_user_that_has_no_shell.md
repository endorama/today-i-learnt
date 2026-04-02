# Run command as another user that has no shell
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>linux</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2018-07-18</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://www.cyberciti.biz/open-source/command-line-hacks/linux-run-command-as-different-user/">source</a></td>
    </tr>
  </tbody>
</table>



You need to be superuser to run commands as another user (or get SU privileges in some other way)

## sudo

```
$ sudo -H -u user bash -c 'echo "I am $USER, with uid $UID"' 
```
```
-H   The -H (HOME) option requests that the security policy set
     the HOME environment variable to the home directory of the
     target user (root by default) as specified by the password
     database.  Depending on the policy, this may be the default
     behavior.
```

## su

```
$ su - user -c 'echo "I am $USER, with uid $UID"'
```

## runuser

```
$ runuser -l user -c 'echo "I am $USER"'
```

## pkexec

Useful for GUI apps

```
$ pkexec --user user /path/to/command arg1
```
