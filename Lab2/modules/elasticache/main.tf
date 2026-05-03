resource "aws_elasticache_cluster" "this" {
  cluster_id      = var.cluster_id
  engine          = "redis"
  node_type       = var.node_type
  num_cache_nodes = var.num_cache_nodes

  subnet_group_name  = var.subnet_group
  security_group_ids = var.sg_ids
}