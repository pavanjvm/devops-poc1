variable "name" {
  description = "The name of the VMSS."
  type        = string
}

variable "location" {
  description = "The Azure location where the resource exists."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "sku" {
  description = "The SKU for the VMSS VMs."
  type        = string
  default     = "Standard_DS1_v2"
}

variable "instances" {
  description = "Number of VM instances."
  type        = number
  default     = 2
}

variable "admin_username" {
  description = "Admin username for the VMs."
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VMs."
  type        = string
  sensitive   = true
}

variable "image_publisher" {
  description = "Image publisher."
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "Image offer."
  type        = string
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "Image SKU."
  type        = string
  default     = "18.04-LTS"
}

variable "image_version" {
  description = "Image version."
  type        = string
  default     = "latest"
}

variable "os_disk_type" {
  description = "The type of OS disk."
  type        = string
  default     = "Standard_LRS"
}

variable "subnet_id" {
  description = "The subnet ID for the VMSS."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
} 