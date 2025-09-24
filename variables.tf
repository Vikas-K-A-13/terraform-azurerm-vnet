variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "The address space for the VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "location" {
  description = "Azure location for VNet"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource Group where VNet will be created"
  type        = string
}

variable "subnets" {
  description = "List of subnets to create"
  type = list(object({
    name           = string
    address_prefix = string
  }))
  default = []
}

variable "tags" {
  description = "Tags for VNet"
  type        = map(string)
  default     = {}
}