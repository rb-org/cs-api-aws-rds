# Outputs

output "rds_instance_endpoint" {
  value = "${module.db.this_db_instance_endpoint}"
}
