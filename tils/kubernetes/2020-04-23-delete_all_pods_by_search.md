# Delete all pods by search
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>kubernetes</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2020-04-23</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="">source</a></td>
    </tr>
  </tbody>
</table>

    kubectl get pods | ag <search term here> | cut -d' ' -f 1 | xargs -I {} kubectl delete pods/{}                 


Handy func:

```
func kubectl:delete-pods() {
  local search
  search="$1"
  kubectl get pods | ag "$search" | cut -d' ' -f 1 | xargs -I {} kubectl delete pods/{}                 
}
```

Lots of pods? Try:

    # 2 workers, interactive, same order
    kubectl get pods | ag "$search" | cut -d' ' -f 1 | parallel -j 2 -k --interactive kubectl delete pod 
    # 2 workers, same order
    kubectl get pods | ag "$search" | cut -d' ' -f 1 | parallel -j 2 -k kubectl delete pod 
```
