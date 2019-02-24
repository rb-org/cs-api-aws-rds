# Outputs

output "rds_db_name" {
  value = "${aws_ssm_parameter.rds_db_database.name}"
}

output "rds_db_endpoint" {
  value = "${aws_ssm_parameter.rds_db_endpoint.name}"
}

output "cs_api_db_user_name" {
  value = "${aws_ssm_parameter.user_name.name}"
}

output "cs_api_db_user_pass" {
  value = "${aws_ssm_parameter.user_password.name}"
}
