output "bucket_name" {
  description = "O nome do bucket criado."
  value       = google_storage_bucket.default.name
}

output "bucket_url" {
  description = "A URL do bucket criado."
  value       = google_storage_bucket.default.url
}
