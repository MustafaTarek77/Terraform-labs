resource "aws_db_instance" "this" {
  allocated_storage    = var.allocated_storage
  engine               = "mysql"
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  db_name              = var.db_name
  skip_final_snapshot  = true

  vpc_security_group_ids = var.sg_ids
  db_subnet_group_name   = var.subnet_group
}