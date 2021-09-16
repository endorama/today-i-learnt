---
category: git
created_on: 2020-02-04
source: https://stackoverflow.com/a/1684694/715002
---

# Import history in another repo
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>git</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2020-02-04</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://stackoverflow.com/a/1684694/715002">source</a></td>
    </tr>
  </tbody>
</table>

YYY: destination repo
XXX: other folder

```
git remote add other /path/to/XXX
git fetch other
git checkout -b ZZZ other/master
mkdir ZZZ
git mv stuff ZZZ/stuff                      # repeat as necessary for each file/dir
git commit -m "Moved stuff to ZZZ"
git checkout master                
git merge ZZZ --allow-unrelated-histories   # should add ZZZ/ to master
git commit
git remote rm other
git branch -d ZZZ                           # to get rid of the extra branch before pushing
git push                                    # if you have a remote, that is
```
