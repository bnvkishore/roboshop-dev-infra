resource "aws_ssm_parameter" "mysql_root_password" {
  name = "/${var.project}/${var.environment}/mysql_root_password" #/roboshop/dev/mysql_sg_id
  type = "SecureString"
  value = var.mysql_root_password
  overwrite = true
}