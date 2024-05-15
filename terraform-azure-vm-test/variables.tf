variable "resource_group_location" {
  type        = string
  default     = "westus2"
  description = "location of resource group"
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "prefix of the resource group name that's combined with a random ID so name is unique in the Azure sub"
}

variable "username" {
  type        = string
  description = "the username for the local account that will be created on the new VM"
  default     = "azureadmin"
}

variable "password" {
  type = string
  description = "the password for the local account that will be created on the new VM"
  default = "P@ssword1"
}

variable "VM" {
  default = {
    myVM1 = {
      nic_name = "myNIC"
      vm_name = "myVM1"
      os_disk_name = "myOsDisk1"
      ip_config_name = "my_nic_configuration1"
      public_ip_name = "myPublicIP"
    }
    myVM2 = {
      nic_name = "test2VM-nic"
      vm_name = "myVM2"
      os_disk_name = "myOsDisk2"
      ip_config_name = "my_nic_configuration2"
      public_ip_name = "myPublicIP2"
    }
    myVM3 = {
      nic_name = "test3VM-nic"
      vm_name = "myVM3"
      os_disk_name = "myOsDisk3"
      ip_config_name = "my_nic_configuration3"
      public_ip_name = "myPublicIP3"
    }
  }
}
