# Delete all pods not in running state

<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>kubernetes</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2021-03-05</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="none">no source</a></td>
    </tr>
  </tbody>
</table>

Force Delete without grace period all pods from the current namespace that are not in the `Running` state.

⚠ this command is destructive
⚠ this command does not respect pod grace termination period

```
$ kubectl get pods | ag -v "Running" | tail -n +2 | awk '{print $1;}' | xargs kubectl delete pod --grace-period=0 --force
```

Explain:

```
kubectl get pods \              # get all pods from current namespace
  | ag -v "Running" \           # inverse match for "Running"
  | tail -n +2 \                # remove header column
  | awk '{print $1;}' \         # take the first column from results
  | xargs kubectl delete pod \  # forcefully delete all found pods ignoring grace period
    --grace-period=0 --force
```
