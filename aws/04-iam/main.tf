resource "aws_iam_user" "default_user" {
  name = var.iam_user_name

  tags = {
    Name = var.iam_user_name
  }
}
