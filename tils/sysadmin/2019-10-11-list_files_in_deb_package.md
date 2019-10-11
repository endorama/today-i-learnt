# List files in deb package
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>sysadmin</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2019-10-11</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://askubuntu.com/a/32509/22318">source</a></td>
    </tr>
  </tbody>
</table>

To see files in installed package:

    $ dpkg-query -L <package_name>

To see files in deb package:

    $ dpkg-deb -c <package_name.deb>

To see files in *not* installed package: 

    $ apt-file list <package_name>

