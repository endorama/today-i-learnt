# Gpg trust own key
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>sysadmin</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-05-06</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="man">source</a></td>
    </tr>
  </tbody>
</table>



```
$ gpg --edit-key <key-id>
gpg> trust
```

Select `5 I trust ultimately`

```
gpg> save
```
