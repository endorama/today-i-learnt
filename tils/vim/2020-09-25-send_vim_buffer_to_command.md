# Send vim buffer to command

<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>vim</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2020-09-25</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://stackoverflow.com/questions/7867356/piping-buffer-to-external-command-in-vim">source</a></td>
    </tr>
  </tbody>
</table>

You can use `:w` to send current buffer to external command.

```
vim resource.yaml
:w kubectl apply -f -
```
