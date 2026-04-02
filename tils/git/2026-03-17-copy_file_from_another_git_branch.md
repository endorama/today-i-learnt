# Copy file from another git branch
 
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
      <td><a href="https://stackoverflow.com/questions/307579/how-do-i-copy-a-version-of-a-single-file-from-one-git-branch-to-another">source</a></td>
    </tr>
  </tbody>
</table>



After git `2.23`:

```
$ git restore --source otherbranch path/to/myfile.txt
```
**Works on folders too!**

Alternatives:

- `$ git checkout otherbranch -- path/to/myfile.txt`, adds also to staging area
- `$ git show otherbranch:path/to/myfile.txt > path/to/myfile.txt`, does not work in Windows
