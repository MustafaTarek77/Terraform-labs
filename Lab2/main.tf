module "compute" {
  source        = "./modules/compute"
  instance_type = var.instance_type
  subnet_id     = module.network.public_subnet_id
}

module "network" {
  source     = "./modules/network"
  cidr_block = var.cidr_block
  region     = var.region 
}

module "rds" {
  source = "./modules/rds"

  allocated_storage = var.db_allocated_storage
  instance_class    = var.db_instance_class
  username          = var.db_username
  password          = var.db_password
  db_name           = var.db_name

  sg_ids = [module.network.rds_security_group_id] 
  subnet_group = module.network.rds_subnet_group_name
}

module "elasticache" {
  source = "./modules/elasticache"

  cluster_id      = "${var.env}-redis"
  node_type       = var.redis_node_type
  num_cache_nodes = var.redis_num_nodes

  sg_ids       = [module.network.redis_security_group_id]
  subnet_group = module.network.redis_subnet_group_name
}