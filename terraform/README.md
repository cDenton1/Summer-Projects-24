## All the files used to create a VM in Terraform and Azure
### terraform-azure-vm-test
https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-terraform?tabs=azure-cli <br /> <br />

| **Files**     | Purpose                                        |
|---------------|:----------------------------------------------:|
| main.tf       | Contains anything other resources used by all  |
| outputs.tf    | Contains the output modules                    |
| providers.tf  | Contains versions and sources for providers    |
| ssh.tf        | Contains resources specific to SSH             |
| variables.tf  | Contains all variables used                    |
| VM(#).tf      | Conatins set resources for that designated VM  |
| route.tf      | Conatins resources for peering routes          |

<br />

| **Status**    | Challenges                                     |
|---------------|:----------------------------------------------:|
| Successful    | Create a VM in Terraform and Azure             |
| Successful    | Create a second VM and connect the twos        |
| Successful    | Connect the VMs on seperate subnets            |
| Successful    | Break up the files more (variables, vms, etc.) |
| Successful    | Connect the VMs on seperate networks           |
| Successful    | Create a module and import/use it (not here)   |
