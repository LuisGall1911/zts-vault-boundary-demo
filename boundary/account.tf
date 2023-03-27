resource "boundary_account_password" "luis" {
  auth_method_id = boundary_auth_method.password.id
  type           = "password"
  login_name     = var.login_name
  password       = var.password
}

resource "boundary_user" "luis" {
  name        = "jeff"
  description = "Luis's user resource"
  account_ids = [boundary_account_password.luis.id]
  scope_id    = boundary_scope.project1.id
}
