variable "name" {
  description = "The name of the network security group."
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

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
} 