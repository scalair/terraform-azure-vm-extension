# Terraform Azure VM Extension

Add an extension to an existing Virtual Machine.

## How to use it

```hcl
module "extension" {
  source  = "github.com/scalair/terraform-azure-vm-extension"
  version = "v1.0.0"
  
  name = "extension-name"

  vm_id = "vm-id"

  extension_name      = "OmsAgentForLinux"
  extension_publisher = "Microsoft.EnterpriseCloud.Monitoring"
  extension_version   = "1.12"
  
  extension_settings           = "{ \"workspaceId\": \"xxxxxxxxxx\" }"
  extension_protected_settings = "{ \"workspaceKey\": \"xxxxxxxxx\" }"
  
  tags = {
      terraform   = true
      environment = "dev"
  }
}
```
