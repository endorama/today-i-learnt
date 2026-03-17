# Remove files from git history
 
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
      <td><a href="https://techcommunity.microsoft.com/blog/azureinfrastructureblog/how-to-safely-remove-secrets-from-your-git-history-the-right-way/4464722">source</a></td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://www.git-tower.com/learn/git/faq/git-filter-repo">source</a></td>
    </tr>
  </tbody>
</table>



Rebase would still leave behind orphaned commit, reachable through `git reflog`.

> [!IMPORTANT]
> If removing secrets **always rotate** them. If pushed to a public git repo, GitHub is scanned entirely every ~3m or so, so you're credentials are already gone. If not is still possible that they get cached somewhere and may be compromised. Choose the safe path, revoke them. 

> [!CAUTION]
> Better to backup the git history by cloning the repo in a separate folder. This will give you a local copy to restore commits from if needed.


`git-filter-repo` is needed, install it with:
```
$ pipx install git-filter-repo
```

```
$ git clone --mirror https://.../repo.git repo-clean.git 
cd repo-clean.git
```

Then remove files (works with folders too)
```
git filter-repo --path "config/secrets.json" --invert-paths
```

`--path` can be specified multiple times.

If remote is missing at the end, add it back
```
$ git remote -v
$ git remote add origin https://.../repo.git
```

Now check the repo (not bare one) to confirm it worked:

```
cd repo git fetch origin git reset --hard origin/main
git log --all -- path/been/removed
```
