resource "boundary_auth_method_password" "password" {
   name               = "userpass"
   description        = "auth method with Username and Password"
   scope_id           = boundary_scope.org1.id
  }
