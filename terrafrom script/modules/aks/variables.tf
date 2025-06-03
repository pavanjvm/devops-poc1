variable "name" {
  description = "The name of the AKS cluster."
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

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
}

variable "vm_size" {
  description = "The size of the Virtual Machine."
  type        = string
  default     = "Standard_DS2_v2"
}

variable "vnet_subnet_id" {
  description = "The subnet ID for the AKS node pool."
  type        = string
}

variable "kubernetes_version" {
  description = "The version of Kubernetes."
  type        = string
  default     = "1.28.3"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
} 