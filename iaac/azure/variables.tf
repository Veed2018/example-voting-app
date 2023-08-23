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