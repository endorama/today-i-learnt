# Create huge file
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>shell</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2020-08-11</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="none">source</a></td>
    </tr>
  </tbody>
</table>


It may be useful to create some very big file for testing purposes.

You can generate a file filled with random content with:

```
dd if=/dev/urandom of=urandom.dat bs=1G seek=10 status=progress
```

Want to create something way bigger?

:warning: this snippet will create 100 1GB files, make sure you have enough free disk space
:info: may take some time, is suggested to run it with `screen`

```
for j in $(seq 1 10); do
  for i in $(seq 1 10); do
    echo "Creating $j-$i..."
    sudo dd if=/dev/urandom of=urandom-"$j-$i".dat bs=1G seek=10 status=progress
  done
done
ls -l urandom-*
```
