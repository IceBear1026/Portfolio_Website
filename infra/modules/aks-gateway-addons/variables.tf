variable "aks_id" {
  description = "Resource ID of the AKS cluster."
  type        = string
}

variable "gateway_api_installation" {
  description = "Managed Gateway API installation mode."
  type        = string
  default     = "Standard"
}

variable "application_load_balancer_enabled" {
  description = "Whether to enable Application Gateway for Containers ALB Controller add-on."
  type        = bool
  default     = true
}