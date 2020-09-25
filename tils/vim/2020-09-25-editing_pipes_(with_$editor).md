# Editing pipes (with \$editor)

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
      <td><a href="https://unix.stackexchange.com/a/282384/111295">source</a></td>
    </tr>
  </tbody>
</table>

Use `vipe`!!

[`vipe`](http://manpages.ubuntu.com/manpages/trusty/en/man1/vipe.1.html) is a command to edit pipelines.

```
$ echo "foo" | vipe | cat
```

`vipe` can be installed in Ubuntu from `moreutils` package
