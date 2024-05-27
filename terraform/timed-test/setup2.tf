# network
resource "azurerm_virtual_network" "myTNet_2" {
    name = "VNET_2"
    address_space = ["192.168.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
}

#subnet
resource "azurerm_subnet" "myTSub_2" {
    name = "SUBNET_2"
    address_prefixes = ["192.168.1.0/24"]
    virtual_network_name = azurerm_virtual_network.myTNet_2.name
    resource_group_name = azurerm_resource_group.rg.name
}

#ip
resource "azurerm_public_ip" "myTpubIP_2" {
    name = "PUBIP_2"
    allocation_method = "Dynamic"
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
}

#nic
resource "azurerm_network_interface" "myTNic_2" {
    name = var.VM.VM_2.nicN
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location

    ip_configuration {
        name = var.VM.VM_2.ipConfigN
        subnet_id = azurerm_subnet.myTSub_2.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = azurerm_public_ip.myTpubIP_2.id
    }
}

#vm
resource "azurerm_linux_virtual_machine" "myTvm_2" {
    name = var.VM.VM_2.vmN
    location              = azurerm_resource_group.rg.location
    resource_group_name   = azurerm_resource_group.rg.name
    network_interface_ids = [azurerm_network_interface.myTNic_2.id]
    size                  = "Standard_DS1_v2"

    os_disk {
        name = var.VM.VM_2.osDiskN
        caching              = "ReadWrite"
        storage_account_type = "Premium_LRS"
    }

    source_image_reference {
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts-gen2"
        version   = "latest"
    }

    computer_name  = "hostname"
    admin_username = var.username
    admin_password = "P@ssword1"
    disable_password_authentication = false

    boot_diagnostics {
        storage_account_uri = azurerm_storage_account.my_storage_account.primary_blob_endpoint
    }
}
