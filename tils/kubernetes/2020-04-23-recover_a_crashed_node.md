# Recover a crashed node
 
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
      <td><a href="https://www.ibm.com/support/knowledgecenter/SS6JWS_3.5.0/UG/sc_ug_node_crash_ub.html">source</a></td>
    </tr>
  </tbody>
</table>


Quick solution

    kubectl delete node <node_name>

Please check pods on the node first

    kubectl get nodes

look for `NotReady`

    kubectl get pods -o wide | ag <node>

Pods should be in `Unknown` state.
