variable "name" {
  description = "The name of the Application Gateway."
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
  description = "The SKU name of the Application Gateway."
  type        = string
}

variable "sku_tier" {
  description = "The SKU tier of the Application Gateway."
  type        = string
}

variable "sku_capacity" {
  description = "The capacity of the Application Gateway."
  type        = number
}

variable "gateway_ip_configuration_name" {
  description = "The name of the gateway IP configuration."
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID for the Application Gateway."
  type        = string
}

variable "frontend_port_name" {
  description = "The name of the frontend port."
  type        = string
}

variable "frontend_port" {
  description = "The frontend port number."
  type        = number
}

variable "frontend_ip_configuration_name" {
  description = "The name of the frontend IP configuration."
  type        = string
}

variable "public_ip_address_id" {
  description = "The public IP address ID."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
} 