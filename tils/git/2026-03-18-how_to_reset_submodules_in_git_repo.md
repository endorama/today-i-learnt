# How to reset submodules in git repo
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>git</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-03-18</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://stackoverflow.com/a/27415757">source</a></td>
    </tr>
  </tbody>
</table>



De-initialise all submodules then checkout them again (contextual to update)

```
$ git submodule deinit -f .
$ git submodule update --init

If your sub-modules have their own sub-modules, instead of second command, try:

```
$ git submodule update --init --recursive --checkout
```

Last if you have edits in submodules you may get `error: Your local changes to the following files would be overwritten by checkout`. 

You can either update specific other submodules with

```
$ git submodule deinit -f -- <submodule_path> and then $ git submodule update --init -- <submodule_path>
```

or need to investigate and revert the changes.
