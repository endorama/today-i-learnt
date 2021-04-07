---
category: kubernetes
created: 2021-04-07
title: Restart pods in Deployment
source: https://linuxhandbook.com/restart-pod-kubernetes/ https://techoverflow.net/2019/04/02/how-to-force-restarting-all-pods-in-a-kubernetes-deployment/
---

# Restart pods in deployment

<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>kubernetes</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2021-04-07</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://linuxhandbook.com/restart-pod-kubernetes/">source</a> <a href="https://techoverflow.net/2019/04/02/how-to-force-restarting-all-pods-in-a-kubernetes-deployment/">source</a></td>
    </tr>
  </tbody>
</table>

If using a recent Kuberentes version:

```
$ kubectl rollout restart deployment <deployment name>
```

Older version don't have a `restart` command. A manual solution is to `delete` pods one by one, as they are going to get
rescheduled.

Another solution is to edit the `Deployment` with a dummy value to trigger a deploy.

```
kubectl patch statefulset/elasticsearch-elasticsearch -p \
  "{\"spec\":{\"template\":{\"metadata\":{\"annotations\":{\"dummy-date\":\"`date +'%s'`\"}}}}}"
```
