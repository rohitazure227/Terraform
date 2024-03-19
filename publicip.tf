resource "azurerm_public_ip" "ncpl-pip" {
  name                = "NCPL-PIBLIC_IP"
  resource_group_name = azurerm_resource_group.ncpl-rg.name
  location            = azurerm_resource_group.ncpl-rg.location
  allocation_method   = "Dynamic"
}