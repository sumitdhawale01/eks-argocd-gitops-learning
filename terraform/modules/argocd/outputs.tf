output "namespace" {
  value = kubernetes_namespace.argocd.metadata[0].name
}

output "admin_password" {
  value     = data.kubernetes_secret.argocd_admin_password.data["password"]
  sensitive = true
}