variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "example-rg"
}

variable "location" {
  description = "The Azure location for resources."
  type        = string
  default     = "East US"
}

variable "vnet_address_space" {
  description = "The address space for the VNET."
  type        = list(string)
  default     = ["10.0.0.0/8"]
}

variable "subnet_prefix" {
  description = "The address prefix for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "admin_username" {
  description = "Admin username for VMSS."
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for VMSS."
  type        = string
  default     = "P@ssword1234!"
  sensitive   = true
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = { environment = "dev" }
} 