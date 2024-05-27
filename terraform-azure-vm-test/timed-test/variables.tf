# account credentials
variable "username" {
    type = string
    default = "azureAdmin"
    description = "username of the local account on the VMs"
}

# vm relations
variable VM {
    default = {
        VM_1 = {
            nicN = "NIC_1"
            vmN = "VM_1"
            osDiskN = "osD_1"
            ipConfigN = "ipC_1"
            pubIpN = "pubIP_1"
        }
        VM_2 = {
            nicN = "NIC_2"
            vmN = "VM_2"
            osDiskN = "osD_2"
            ipConfigN = "ipC_2"
            pubIpN = "pubIP_2"
        }
    }
}
