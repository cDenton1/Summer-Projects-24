#create subnet
resource "azurerm_subnet" "my_terraform_subnet3" {
  name                 = "mySubnet3"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.my_terrform_network2.name
  address_prefixes     = ["192.168.1.0/24"]
}

#create public IP
resource "azurerm_public_ip" "my_terraform_public_ip3" {
  name                = var.VM.myVM3.public_ip_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
}

#create network interface
resource "azurerm_network_interface" "my_terraform_nic_3" {
  name                = "myNIC3"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = var.VM.myVM3.ip_config_name
    subnet_id                     = azurerm_subnet.my_terraform_subnet3.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.my_terraform_public_ip3.id
  }
}

#create virtual machine
resource "azurerm_linux_virtual_machine" "my_terraform_vm3" {
  name                  = var.VM.myVM3.vm_name
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.my_terraform_nic_3.id]
  size                  = "Standard_DS1_v2"

  os_disk {
    name                 = var.VM.myVM3.os_disk_name
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
