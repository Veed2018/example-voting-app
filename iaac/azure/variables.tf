variable "location" {
  description = "What region we are creating the resources in"
  type = string
  default = "northeurope"
}

variable "client_id" {
  description = "Service Principal Name"
  type = string
  sensitive = true
}

variable "client_secret" {
  description = "Service Principal secret"
  type = string
  sensitive = true
}