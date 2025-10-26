output "instance_id" {
  description = "O ID da instância EC2 criada."
  value       = aws_instance.default_ec2.id
}

output "public_ip" {
  description = "O endereço IP público da instância EC2."
  value       = aws_instance.default_ec2.public_ip
}
