#variable "auth_method_id" {
 # description = "Boundary provider auth_method_id"
  #default     = "ampw_1234567890"
#}

variable "boundary_cluster_username" {
  description = "Boundary provider login name"
  default     = "admin"
}

variable "boundary_cluster_password" {
  description = "Boundary provider login password"
  default     = "password"
}

variable "tfc_organization" {}

variable "login_name" {}
variable "password" {}
