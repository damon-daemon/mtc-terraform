# mtc-docker
Following along with the Terraform More Than Certified course
https://morethancertified.teachable.com/p/mtc-terraform

## useful commands
Terraform interactive console
```
terraform console
```
Show state file, format using `jq`
```
terraform show -json | jq
```
list resources defined in the statefile
```
terraform state list
```
Show output. This pulls from the statefile, so if you haven't applied output changes, they won't show up yet.
```
terraform output
```
Tainting will mark a resource to be destroyed and recreated
```
terraform taint <resource_name>
```
To undo taint...
```
terraform untaint <resource_name>
```
Refreshing the statefile. Modifies the statefile to match the code but does not update the actual resources. Be careful with this, it means you're doing meatball surgery on the statefile.
```
terraform refresh
``` 
## misc
I like this guide for importing AWS IAM resources into the statefile
https://mklein.io/2019/09/30/terraform-import-role-policy/
