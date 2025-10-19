output "role_binding_id" {
  description = "O ID da atribuição de papel IAM."
  value       = google_project_iam_member.default_binding.id
}
