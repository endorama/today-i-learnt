# Extracting a folder from a git repository retaining history
 
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
      <td><a href="https://stackoverflow.com/questions/25274614/how-can-i-extract-a-portion-of-a-git-repository-into-its-own-repo-while-retaini">source</a></td>
    </tr>
  </tbody>
</table>



## fast: delete all non required folders

```
$ git clone initial final # or copy it 😇
$ cd final
$ git filter-branch --tree-filter 'rm -rf <list of folders separated by space>' HEAD
$ git filter-branch -f --prune-empty 
```

Above commands will remove any folders mentioned in the list but your original commit history will be maintained. The last command deletes all empty commits resulting from the previous operation.

## long: move folder manually

In case of a huge repo, `filter-branch` may not be practical due to time required for execution.

Start by creating separate repositories for each folder you want to migrate. This can be done using filter-branch command as follows

	git filter-branch –prune-empty –subdirectory-filter A/ master
	git filter-branch –prune-empty –subdirectory-filter B/ master

Each one will have the contents of the respective folders along with all their history. You can then push these as temp repositories on remote. ( these will also act as checkpoints in case you need to re-do the process)

Next, create your new repository

	  git clone <remote path> NewRepo
	  cd NewRepo
	  
  # add a readme file
	  touch Readme.md
	  git add .
	  git commit -am "Adding ReadMe file"

You can then merge your individual folders (A and B repos) into NewRepo

	  # Merge Repo A
	  git remote add -f A <remote path for A>
	  git merge -s ours --no-commit A/master
	  git read-tree --prefix=A/ -u A/master
	  git commit -m "Merge A into NewRepo"
	  git remote remove A

	  # Merge Repo B
	  git remote add -f B <remote path for B>
	  git merge -s ours --no-commit B/master
	  git read-tree --prefix=B/ -u B/master
	  git commit -m "Merge B into NewRepo"
	  git remote remove B

Next you can confirm that your origin is set to point to the NewRepo and push code
	  
	git remote add origin <remote path for NewRepo>
	git push origin master

NewRepo should now contain both the folders and all their history.
