terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "3.0.0"
    }
  }
}
provider "azurerm" {
    client_id = ""
    client_secret = ""
    tenant_id = ""
    subscription_id = ""
 features {}
}
resource "azurerm_virtual_network" "vnet" {
  name = "vnet-virtualnetwork"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
}
