# Sign all previous commit in a branch
 
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
      <td><a href="https://stackoverflow.com/a/54987693">source</a></td>
    </tr>
  </tbody>
</table>



```
$ git rebase --exec "git commit --amend --no-edit -n -S" -i 8fd7b22

```
