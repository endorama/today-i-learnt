# Reduce pdf size
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>linux</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-07-10</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://www.digitalocean.com/community/tutorials/reduce-pdf-file-size-in-linux">source</a></td>
    </tr>
  </tbody>
</table>



Use `gs` with `-dPDFSETTINGS=/ebook` option.

```
$ gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=out.pdf in.pdf
```
