resource "azurerm_linux_virtual_machine" "main" {
  name                            = "NCPL-UBUNTU-VM"
  resource_group_name             = azurerm_resource_group.ncpl-rg.name
  location                        = azurerm_resource_group.ncpl-rg.location
  #size                            = "Standard_D2s_v3"
  size                            = "Standard_B1s"
  admin_username                  = "balaadmin"
  admin_password                  = "Bala@12345678"
  network_interface_ids           = [azurerm_network_interface.ncpl-nic.id]
  disable_password_authentication = "false"
  count = 3

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
   # sku =       "20.04-LTS"
    version   = "latest"
  }
  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
   tags = {
    Environment = "UBUNTU"
  }
}