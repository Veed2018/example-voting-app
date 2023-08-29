variable "location" {
  description = "What region we are creating the resources in"
  type = string
  default = "northeurope"
}

variable "aks_client_id" {
  description = "Service Principal Name for AKS Cluster"
  type = string
  sensitive = true
}

variable "aks_client_secret" {
  description = "Service Principal secret for AKS cluster"
  type = string
  sensitive = true
}