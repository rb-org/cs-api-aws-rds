module "cs_api_rds" {
  source = "./cs_api_rds"

  db_engine                 = "mysql"                                  # aurora-mysql ver = 5.7.12
  db_engine_ver             = "5.7.23"
  major_engine_version      = "5.7"                                    # Option group parameter
  db_parameter_group_family = "mysql5.7"
  db_adm_username           = "${terraform.workspace}rdsadmin"
  db_instance               = "db.t2.medium"
  db_adm_password           = "${random_string.admin_password.result}"
  storage_encrypted         = false

  # Remote state references
  db_subnet_ids    = "${data.terraform_remote_state.cs_api_base.database_subnets_ids}"
  db_subnet_group  = "${data.terraform_remote_state.cs_api_base.database_subnet_group}"
  vpc_id           = "${data.terraform_remote_state.cs_api_base.vpc_id}"
  db_clients_sg_id = "${data.terraform_remote_state.cs_api_base.db_clients_sg_id}"

  # Tags
  default_tags = "${var.default_tags}"

  # Logging
  enabled_cloudwatch_logs_exports = "${var.mysql_log_exports}"
}

module "ssm" {
  source = "./ssm"

  rds_endpoint            = "${module.cs_api_rds.rds_instance_endpoint}"
  db_adm_username         = "${terraform.workspace}rdsadmin"
  create_ssm_service_role = "${var.create_ssm_service_role}"
  csapi_rds_password      = "${var.mysql_rds_password}"
  db_adm_password         = "${random_string.admin_password.result}"
}
