# Querying unix sockets with curl

<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>sysadmin</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2021-02-10</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://kelcecil.com/curl/2015/12/07/query-unix-socket-with-curl.html">source</a></td>
    </tr>
  </tbody>
</table>

```
$ curl -X GET --unix-socket /var/run/docker.sock http:/images/json
```
