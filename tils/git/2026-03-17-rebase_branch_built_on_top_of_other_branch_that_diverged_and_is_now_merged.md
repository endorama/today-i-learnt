# Rebase branch built on top of other branch that diverged and is now merged
 
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
      <td>me</td>
    </tr>
  </tbody>
</table>



You're on branch-b

```
$ git log branch-b..main # show commit that are not yet on main, includes commit from the other branch
$ git checkout -b branch-b-new main # create a new branch from main, not from current branch
$ git cherry-pick <commit 1> <...> # cherry pick relevant commits
$ git branch -M branch-b-new branch-b # replace old branch
$ git push --force
```

`git branch -M` allows to replace an existing branch. From `git branch --help`:
> With a -m or -M option, <old-branch> will be renamed to <new-branch>. If <old-branch> had a corresponding reflog, it is renamed to match <new-branch>, and a reflog entry is created to remember the branch renaming. If <new-branch> exists, -M must be used to force the rename to happen.
