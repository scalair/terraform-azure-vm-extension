variable name {
  description = "The name of the virtual machine extension peering."
  type        = string
}

variable vm_id {
  description = "The ID of the Virtual Machine."
  type        = string
}

variable extension_name {
  description = "The type of extension, available types for a publisher can be found using the Azure CLI."
  type        = string
}

variable extension_publisher {
  description = "The publisher of the extension, available publishers can be found by using the Azure CLI."
  type        = string
}

variable extension_version {
  description = "Specifies the version of the extension to use, available versions can be found using the Azure CLI."
  type        = string
}

variable auto_upgrade_minor_version {
  description = "Specifies if the platform deploys the latest minor version update to the 'type_handler_version' specified."
  type        = bool
  default     = false
}

variable extension_settings {
  description = "The settings passed to the extension, these are specified as a JSON object in a string."
  type        = string
  default     = "{}"
}

variable extension_protected_settings {
  description = "The protected_settings passed to the extension, like settings, these are specified as a JSON object in a string."
  type        = string
  default     = "{}"
}

variable tags {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
