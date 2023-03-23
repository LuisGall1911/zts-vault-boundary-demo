resource "boundary_account_password" "luis" {
  auth_method_id = boundary_auth_method.password.id
  type           = "password"
  login_name     = var.login_name
  password       = var.password
}
