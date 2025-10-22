output "user_name" {
  description = "O nome do usuário IAM criado."
  value       = aws_iam_user.default_user.name
}

output "user_arn" {
  description = "O ARN do usuário IAM criado."
  value       = aws_iam_user.default_user.arn
}
