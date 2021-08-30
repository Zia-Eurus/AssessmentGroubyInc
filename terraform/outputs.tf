
output "kubernetes_cluster_name" {
  value       = module.gke.kubernetes_cluster_name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = modudle.gke.kubernetes_cluster_host
  description = "GKE Cluster Host"
}