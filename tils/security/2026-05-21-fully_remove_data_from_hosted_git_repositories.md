# Fully remove data from hosted git repositories
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>security</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2026-05-21</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://docs.gitlab.com/user/project/repository/repository_size/#remove-data-from-a-repository">source</a></td>
    </tr>
  </tbody>
</table>



Depends on the service.

- *GitHub*: need to contact support with commit hash.
- *GitLab*: self services, requires a lot of time. You need to remove the blob, then run housekeeping, then run pruning unrecheable objects. Can take few hours.
