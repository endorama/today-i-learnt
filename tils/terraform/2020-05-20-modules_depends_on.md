# Modules depends on
 
<table>
  <tbody>
    <tr>
      <td>Category</td>
      <td>terraform</td>
    </tr>
   <tr>
      <td>Added on</td>
      <td>2020-05-20</td>
    </tr>
    <tr>
      <td>Source</td>
      <td><a href="https://medium.com/@bonya/terraform-adding-depends-on-to-your-custom-modules-453754a8043e">source</a></td>
    </tr>
  </tbody>
</table>

Terraform does not yet (as of 0.12) support `depends_on` natively on modules.

The behaviour may be emulated like so:

```
# File fancy-app-module/variables.tf
variable depends_on { default = [], type = "list"}

# File my-app.tfmodule "app" {
    source  = "modules/fancy-app-module"
    # Wait for resources and associations to be created
    depends_on = [
        "${aws_alb_target_group.app.arn}"
    ]
}
resource "aws_alb_target_group" "app" {
    name     = "app-group"
}
resource "aws_alb_listener" "front_end" {
   # Association of default_action takes some time and
   # if this action is required by you module, it's creation
   # might fail due to async provisioning of the
   # resources by terraform
   default_action {
        target_group_arn = "${aws_alb_target_group.app.id}"
        type             = "forward"
    }
}
```
