# Find what package a file belongs to in ubuntu or debian
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>linux</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2016-12-01</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="http://superuser.com/questions/10997/find-what-package-a-file-belongs-to-in-ubuntu-debian">source</a></td>
    </tr>
  </tbody>
</table>




## dpkg

```
$ dpkg -S /path/to/file
```

> 'dpkg -S' just matches the string you supply it, so just using 'ls' as an argument matches any file from any package that has 'ls' anywhere in the filename. So usually it's a good idea to use an absolute path. You can see in the second example that 12 thousand files that are known to dpkg match the bare string 'ls'.

## dlocate

```
dlocate [ PATTERN ]
```

Requires updated db (`sudo update-dlocatedb`)
