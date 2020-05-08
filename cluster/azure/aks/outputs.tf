output "client_certificate" {
  sensitive = true
  value     = azurerm_kubernetes_cluster.cluster.kube_config.0.client_certificate
}

output "kube_config" {
  sensitive = true
  value     = azurerm_kubernetes_cluster.cluster.kube_config_raw
}

output "kube_config_block" {
  sensitive = true
  value     = azurerm_kubernetes_cluster.cluster.kube_config
}

output "kubeconfig_done" {
  value = join("", local_file.cluster_credentials.*.id)
}

output "resource_id" {
  value = azurerm_kubernetes_cluster.cluster.id
}

output "msi_client_id" {
  value = data.external.msi_object_id.result.msi_client_id
}

output "kubelet_client_id" {
  value = data.external.msi_object_id.result.kubelet_client_id
}

output "kubelet_id" {
  value = data.external.msi_object_id.result.kubelet_id
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.cluster.name
}

output "node_resource_group" {
  value = azurerm_kubernetes_cluster.cluster.node_resource_group
}

output "kubelet_resource_id" {
  value = data.external.msi_object_id.result.kubelet_resource_id
}
