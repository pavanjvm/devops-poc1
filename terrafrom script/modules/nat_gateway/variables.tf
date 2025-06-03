variable "name" {
  description = "The name of the NAT Gateway."
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

variable "sku_name" {
  description = "The SKU name of the NAT Gateway."
  type        = string
  default     = "Standard"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
} 