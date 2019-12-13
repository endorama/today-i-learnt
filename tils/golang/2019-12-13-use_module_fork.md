# Use module fork
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>golang</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2019-12-13</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://stackoverflow.com/a/56792766/715002">source</a></td>
    </tr>
  </tbody>
</table>

This is how to use a fork of a module in a proget:

```
$ go mod edit -replace="github.com/someone/repo@v0.0.0=github.com/you/repo@v1.1.1"
```
