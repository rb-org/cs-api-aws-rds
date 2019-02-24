output "db_engine" {
  value = "${module.cs_api_rds.db_engine}"
}

output "rds_db_name" {
  value = "${module.ssm.rds_db_name}"
}

output "rds_db_endpoint" {
  value = "${module.ssm.rds_db_endpoint}"
}

output "cs_api_db_user_name" {
  value = "${module.ssm.cs_api_db_user_name}"
}

output "cs_api_db_user_pass" {
  value = "${module.ssm.cs_api_db_user_pass}"
}
