output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "rds_subnet_group_name" {
  value = aws_db_subnet_group.rds_subnet_group.name
}

output "rds_security_group_id" {
  value = aws_security_group.rds_sg.id
}

output "redis_subnet_group_name" {
  value = aws_elasticache_subnet_group.redis_subnet_group.name
}

output "redis_security_group_id" {
  value = aws_security_group.redis_sg.id
}