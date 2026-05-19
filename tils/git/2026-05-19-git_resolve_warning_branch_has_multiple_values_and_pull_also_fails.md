# Git resolve warning branch has multiple values and pull also fails
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>git</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-05-19</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://stackoverflow.com/questions/47684283/warning-branch-has-multiple-values-and-pull-also-fails">source</a></td>
    </tr>
  </tbody>
</table>



Open `.git/config` and remove duplicate entry for the branch where this happen.

Es from this
```
[branch "201-me"]
    remote = origin
    merge = refs/heads/201

[branch "201-me"]
    remote = origin
    merge = refs/heads/201
```
to this
```
[branch "201-me"]
    remote = origin
    merge = refs/heads/201
```
