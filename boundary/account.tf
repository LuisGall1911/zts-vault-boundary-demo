resource "boundary_account_oidc" "luis" {
  name           = "luis"
  description    = "Luis"
  auth_method_id = boundary_auth_method_oidc.auth0.id
  issuer         = var.app_domain
  subject        = var.auth0_user_id_luis
  depends_on = [
    boundary_auth_method_oidc.auth0
  ]
}

resource "boundary_user" "luis" {
  name        = "luis"
  description = "Luis's user resource"
  account_ids = [boundary_account_oidc.luis.id]
  scope_id    = boundary_scope.org1.id
}

resource "boundary_managed_group" "boss" {
  name           = "boss"
  description    = "Boss OIDC managed group"
  auth_method_id = boundary_auth_method_oidc.auth0.id
  filter         = "\"luis\" in \"/userinfo/nickname\"
}
