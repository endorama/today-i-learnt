# Graceful nginx shutdown

<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>sysadmin</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2020-11-20</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://aaronbonner.io/post/42992801181/gracefully-shutdown-nginx">source</a></td>
    </tr>
  </tbody>
</table>

Using `nginx` command line and passing `-s quit` will terminate NGINX once all connections have been completed.

```
sudo nginx -s quit
```

More on NGINX signals: [Controlling NGINX](http://nginx.org/en/docs/control.html)
