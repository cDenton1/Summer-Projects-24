#peer route 1
resource "azurerm_virtual_network_peering" "net_peering1" {
    name = "peer1to2"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.my_terrform_network.name
    remote_virtual_network_id = azurerm_virtual_network.my_terrform_network2.id
}

#peer route 2
resource "azurerm_virtual_network_peering" "net_peering2" {
    name = "peer2to1"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.my_terrform_network2.name
    remote_virtual_network_id = azurerm_virtual_network.my_terrform_network.id
}
