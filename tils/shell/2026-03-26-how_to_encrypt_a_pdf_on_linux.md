# How to encrypt a pdf on linux
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>shell</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-03-26</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://askubuntu.com/a/258867">source</a></td>
    </tr>
  </tbody>
</table>



```
$ pdftk [mydoc].pdf output [mydoc.128].pdf owner_pw [foo] user_pw [baz]

```

Both `owner_pw` and `user_pw` are needed.

From [this page](https://stackoverflow.com/a/45378451) it seems that
- `owner_pw` locks changing security settings;
- `user_pw` locks displaying the PDF without password.

Additional permissions may be granted, see EXAMPLES in https://web.mit.edu/outland/arch/sun4x_58/build/pdftk-1.12/pdftk.1.html
