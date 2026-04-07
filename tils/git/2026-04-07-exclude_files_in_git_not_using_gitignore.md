# Exclude files in git not using gitignore
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>git</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-04-07</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="me">source</a></td>
    </tr>
  </tbody>
</table>



Use local repo's `.git/info/exclude`

```
$ echo '.folder/' >> .git/info/exclude
```

Or use the Use global git ignore file. It needs to be set in the git config:

```
[core]
	excludesFile = ~/.config/git/gitignore_global
```

Use it as a normal git ignore file.
