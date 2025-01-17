terraform {
  required_providers {
    azurerm ={
        source = "hashicorp/azurerm"
        version = "3.0.0"
    }
  }
}
provider "azurerm" {
 client_id = ""
 tenant_id = ""
 subscription_id = ""
 client_secret = ""
    features {}
      
    }
resource "azurerm_resource_group" "rg" {
  name = "rg-resourcegroup "
  location = "west-US"
}
