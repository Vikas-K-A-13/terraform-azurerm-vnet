# terraform-azurerm-vnet
Terraform module to create Azure Virtual Networks (VNet) and Subnets
# Azure VNet Terraform Module

This module creates an Azure Virtual Network and optional subnets.

## Usage

```hcl
module "vnet" {
  source  = "github.com/<your-username>/terraform-azurerm-vnet"
  vnet_name           = "my-vnet"
  resource_group_name = "demo-rg"
  location            = "eastus"
  address_space       = ["10.0.0.0/16"]

  subnets = [
    {
      name           = "subnet1"
      address_prefix = "10.0.1.0/24"
    },
    {
      name           = "subnet2"
      address_prefix = "10.0.2.0/24"
    }
  ]

  tags = {
    environment = "dev"
  }
}
