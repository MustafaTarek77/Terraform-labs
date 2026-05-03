variable "cluster_id" {}
variable "node_type" {}
variable "num_cache_nodes" {}

variable "subnet_group" {}
variable "sg_ids" {
  type = list(string)
}