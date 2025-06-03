terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateaccount123"
    container_name       = "tfstate"
    key                  = "devops-poc1.terraform.tfstate"
  }
} 