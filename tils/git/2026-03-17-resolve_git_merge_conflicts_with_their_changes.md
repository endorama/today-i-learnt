# Resolve git merge conflicts with their changes
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>git</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-03-17</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://stackoverflow.com/a/21777677">source</a></td>
    </tr>
  </tbody>
</table>



```
$ git pull -X theirs
```

If already in conflicted state:
```
$ git checkout --theirs path/to/file
```
