# Variables

variable "db_adm_username" {}
variable "rds_endpoint" {}
variable "create_ssm_service_role" {}
variable "csapi_rds_password" {}
variable "db_adm_password" {}

variable "csapi_db_username" {
  default = "csapi"
}

variable "csapi_db_name" {
  default = "people"
}
