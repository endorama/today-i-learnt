# Find hardware model on linux
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>shell</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2023-01-11</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://unix.stackexchange.com/a/75752">source</a></td>
    </tr>
  </tbody>
</table>



```
$ sudo dmidecode | grep -A3 '^System Information'
```
