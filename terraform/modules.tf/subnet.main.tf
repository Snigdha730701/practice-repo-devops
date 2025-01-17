terraform{
    required_providers {
        source= "hashicorp/azurerm"
        version= "3.0.0"

    }
}
provider "azurerm" {
    client_id = ""
    client_secret = ""
    subscription_id = ""
    tenant_id = ""
  features {
    
  }
}
resource "azurerm_subnet" "snet" {
  name                 = "snet-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]


}