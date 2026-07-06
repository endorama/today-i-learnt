# Display all characters in file with cat
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>shell</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-07-06</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="cat manual">source</a></td>
    </tr>
  </tbody>
</table>



`-A/--show-all` is equivalent to `-vET`:
```
-E, --show-ends
    display $ or ^M$ at end of each line
-T, --show-tabs
    display TAB characters as ^I
-v, --show-nonprinting
    use ^ and M- notation, except for LFD and TAB
```

```
$ # Show file with hidden chars
$ cat -A file
```
