## All the files used to create a VM in Terraform and Azure
### terraform-azure-vm-test 
Subdirectory - https://github.com/cDenton1/Summer-Projects-24/tree/main/terraform/terraform-azure-vm-test <br />
Tutorial - https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-terraform?tabs=azure-cli <br />

| **Files**     | Purpose                                        |
|---------------|:----------------------------------------------:|
| main.tf       | Contains anything other resources used by all  |
| outputs.tf    | Contains the output modules                    |
| providers.tf  | Contains versions and sources for providers    |
| ssh.tf        | Contains resources specific to SSH             |
| variables.tf  | Contains all variables used                    |
| VM(#).tf      | Conatins set resources for that designated VM  |
| route.tf      | Conatins resources for peering routes          |

| **Status**    | Challenges                                     |
|---------------|:----------------------------------------------:|
| Successful    | Create a VM in Terraform and Azure             |
| Successful    | Create a second VM and connect the twos        |
| Successful    | Connect the VMs on seperate subnets            |
| Successful    | Break up the files more (variables, vms, etc.) |
| Successful    | Connect the VMs on seperate networks           |
| Successful    | Create a module and import/use it (not here)   |

<br />

### timed-test
Subdirectory - https://github.com/cDenton1/Summer-Projects-24/tree/main/terraform/timed-test <br />
I wanted to see how long it would take for me to setup two VM's on two seperate networks from scratch, minimize the use of previous setups and then connect between the two using netcat instead of just pinging the other machine. It had taken a little over an hour with a time of **1:00:02.95**, all the code is included in the subdirectory linked above.
