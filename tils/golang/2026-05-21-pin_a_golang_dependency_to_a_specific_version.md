# Pin a golang dependency to a specific version
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>golang</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-05-21</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="none">source</a></td>
    </tr>
  </tbody>
</table>



In Go just updating the dependency version in `go.mod` is not enough, as the algorithm would select the minimum compatible version, which may not be the one we want.

To pin it, use a `replace` directive in `go.mod`, forcing dependency resolution to use the specified version.

```go.mod
replace github.com/repo/dep => github.com/repo/dep v1.20.7
```
