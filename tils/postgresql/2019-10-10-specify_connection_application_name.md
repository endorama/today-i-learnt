# Specify connection application name
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>postgresql</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2019-10-10</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://www.postgresql.org/docs/10/libpq-connect.html">source</a></td>
    </tr>
  </tbody>
</table>

You can specify `application_name` in posgres connection string:

    postgresql://.../database?application_name=myapp

If other Query parameters are already present use `&` to concatenate them.
