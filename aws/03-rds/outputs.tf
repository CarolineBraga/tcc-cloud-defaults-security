output "db_instance_address" {
  description = "O endereço (endpoint) da instância RDS."
  value       = aws_db_instance.default_db.address
}

output "db_instance_arn" {
  description = "O ARN da instância RDS."
  value       = aws_db_instance.default_db.arn
}
