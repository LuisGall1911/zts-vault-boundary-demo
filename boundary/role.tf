resource "boundary_role" "admin" {
  name          = "steel-ball-run-project-admin"
  description   = "admin role"
  principal_ids = [boundary_user.luis.id]
  grant_strings = ["id=*;type=*;actions=*"]
  scope_id      = boundary_scope.project1.id
}

resource "boundary_role" "linux" {
  name        = "steel-ball-run-project-linux-admin"
  description = "linux admin role"
  principal_ids = [boundary_user.luis.id]
 
  grant_strings = [
    "id=${boundary_target.linux.id};actions=*",
    "id=*;type=session;actions=cancel:self,list,read",
    "id=*;type=target;actions=list,read",
    "id=*;type=host-catalog;actions=list,read",
    "id=*;type=host-set;actions=list,read",
    "id=*;type=host;actions=list,read"
  ]
  
  scope_id = boundary_scope.project1.id
  depends_on = [
    boundary_host_catalog_static.linux,
    boundary_host_static.linux,
    boundary_host_set_static.linux,
    boundary_target.linux
  ]
}
