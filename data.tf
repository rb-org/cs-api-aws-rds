data "aws_region" "current" {}

resource "random_string" "admin_password" {
  length  = 16
  special = true
}
