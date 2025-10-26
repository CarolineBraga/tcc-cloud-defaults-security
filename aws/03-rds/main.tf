resource "aws_db_instance" "default_db" {
  identifier        = var.db_identifier
  allocated_storage = var.db_allocated_storage
  engine            = var.db_engine
  instance_class    = var.db_instance_class
  username          = var.db_username
  password          = var.db_password
}
