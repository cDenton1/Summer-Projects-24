# resource group
resource "azurerm_resource_group" "rg" {
    location = "westus2"
    name = "rg-testAT"
}

resource "random_id" "random_id" {
  keepers = {
    #generate a new ID only when a new resource group is defined
    resource_group = azurerm_resource_group.rg.name
  }
  byte_length = 8
}

# storage account for boot diagnostics
resource "azurerm_storage_account" "my_storage_account" {
    name = "diag${random_id.random_id.hex}"
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    account_tier = "standard"
    account_replication_type = "LRS"
}

# peering rules maybe
resource "azurerm_virtual_network_peering" "nPeer_1" {
    name = "peer1to2"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.myTNet_1.name
    remote_virtual_network_id = azurerm_virtual_network.myTNet_2.id
}

resource "azurerm_virtual_network_peering" "nPeer_2" {
    name = "peer2to1"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.myTNet_2.name
    remote_virtual_network_id = azurerm_virtual_network.myTNet_1.id
}
