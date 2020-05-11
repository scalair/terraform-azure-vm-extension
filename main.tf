resource "azurerm_virtual_machine_extension" "vm_extension" {
  name = var.name

  virtual_machine_id         = var.vm_id
  publisher                  = var.extension_publisher
  type                       = var.extension_name
  type_handler_version       = var.extension_version
  auto_upgrade_minor_version = var.auto_upgrade_minor_version
  settings                   = var.extension_settings
  protected_settings         = var.extension_protected_settings

  tags = var.tags
}
