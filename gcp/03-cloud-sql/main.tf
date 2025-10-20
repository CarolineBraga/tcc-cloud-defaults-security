resource "google_sql_database_instance" "default" {
  name             = var.db_instance_name
  database_version = var.database_version

  settings {
    tier = var.db_tier
  }
}
