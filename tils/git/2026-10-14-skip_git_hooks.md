# Skip git hooks
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>git</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-10-14</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://adamj.eu/tech/2023/02/13/git-skip-hooks/">source</a></td>
    </tr>
  </tbody>
</table>



```
$ git -c core.hooksPath=/dev/null <command>
```

This will reset the hooks path and make sure no hooks run on the command. Useful to skip `push` hooks.

Dangerous! Please apply with care.
