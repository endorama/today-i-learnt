# Git get back to previous branch
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>git</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-05-09</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://...">source</a></td>
    </tr>
  </tbody>
</table>



To quickly switch to previous in use branch:

```
$ git checkout -
```

In fact `-` is a synonym of `@{-1}` (previous branch) for more commands like `git merge`, `git rebase`, `git switch`. And you can pass `@{-1}` to all commands that accept branches and commits.
