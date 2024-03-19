resource "azurerm_storage_account" "tfstate" {
  name = "ncplstorage123456123"
  resource_group_name = azurerm_resource_group.ncpl-rg.name
  location =  azurerm_resource_group.ncpl-rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = "true"

}

resource "azurerm_storage_container" "tfnewstate" {
  name = "terraformncplstate"
  storage_account_name = azurerm_storage_account.tfstate.name
  container_access_type = "private"
  depends_on = [ azurerm_storage_account.tfstate ]

}