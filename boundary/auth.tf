resource "boundary_auth_method" "password" {
   name               = "userpass"
   description        = "auth method with Username and Password"
   scope_id           = boundary_scope.project1.id
   type = "password"
  }
