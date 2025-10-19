resource "google_project_iam_member" "default_binding" {
  project = var.project_id
  role    = var.iam_role
  member  = var.member_email
}
