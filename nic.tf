resource "azurerm_network_interface" "ncpl-nic" {
  name                = azurerm_virtual_network.ncpl-network.name
  location            = azurerm_resource_group.ncpl-rg.location
  resource_group_name = azurerm_resource_group.ncpl-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.ncpl-internal.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.ncpl-pip.id
  }
}