# Read-Only for HCP Vault Cluster
output "cloud_provider" {
  description = "The provider where the HCP Vault cluster is located."
  value       = hcp_vault_cluster.demo.cloud_provider
}

output "namespace" {
  description = "The name of the customer namespace this HCP Vault cluster is located in."
  value       = hcp_vault_cluster.demo.namespace
}

output "region" {
  description = "The region where the HCP Vault cluster is located."
  value       = hcp_vault_cluster.demo.region
}

output "vault_private_endpoint_url" {
  description = "The private URL for the Vault cluster."
  value       = hcp_vault_cluster.demo.vault_private_endpoint_url
}

output "vault_public_endpoint_url" {
  description = "The public URL for the Vault cluster."
  value       = hcp_vault_cluster.demo.vault_public_endpoint_url
}

output "vault_version" {
  description = "The Vault version of the cluster."
  value       = hcp_vault_cluster.demo.vault_version
}

# Read-Only for HCP Vault Cluster Admin Token
output "admin_token_id" {
  description = "The ID of this resource."
  value       = hcp_vault_cluster_admin_token.demo.id
}

output "token" {
  description = "The admin token of this HCP Vault cluster."
  value       = hcp_vault_cluster_admin_token.demo.token
  sensitive   = true
}

# Read-Only for HCP Boundary Cluster
output "boundary_cluster_url" {
  description = "A unique URL identifying the Boundary cluster."
  value       = hcp_boundary_cluster.demo.cluster_url
}

output "boundary_created_at" {
  description = "The time that the Boundary cluster was created."
  value       = hcp_boundary_cluster.demo.created_at
}

output "boundary_id" {
  description = "The ID of this resource."
  value       = hcp_boundary_cluster.demo.id
}

output "boundary_state" {
  description = "The state of the Boundary cluster."
  value       = hcp_boundary_cluster.demo.state
}
