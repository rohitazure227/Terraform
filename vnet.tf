resource "azurerm_virtual_network" "ncpl-network" {
  name                = "ncpl-vm-net"
  address_space       = ["10.0.0.0/22"]
  location            = azurerm_resource_group.ncpl-rg.location
  resource_group_name = azurerm_resource_group.ncpl-rg.name
}