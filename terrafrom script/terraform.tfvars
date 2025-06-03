resource_group_name = "devops-rg"
location           = "East US 2"
vnet_address_space  = ["10.1.0.0/16"]
subnet_prefix       = ["10.1.1.0/24"]
admin_username      = "devopsadmin"
admin_password      = "ChangeMeSecurely123!"
tags = {
  environment = "dev"
  owner       = "pavan"
} 