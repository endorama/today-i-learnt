# Rebase branch built on top of other branch that diverged and is now merged
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>git</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-03-04</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="me">source</a></td>
    </tr>
  </tbody>
</table>

This may happen when you created a branch on top of another branch. The old branch you started is now in `main` and had some changes, so if you just rebase interactively you get nasty conflicts.

The easiest solution is to start a new branch from `main` and cherry pick commits on top of it. You'll have conflicts, but only the ones relevant to the changes on top of the other branch. 

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
