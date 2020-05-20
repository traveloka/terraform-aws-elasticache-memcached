variable "product_domain" {
  description = "Product domain abbreviation this memcached belongs to"
  type        = "string"
}

variable "environment" {
  description = "Environment of this memcached resides in"
  type        = "string"
}

variable "description" {
  description = "Description of what this memcached used for"
  type        = "string"
  default     = ""
}

variable "service_name" {
  description = "Name of the service this memcached belongs to"
  type        = "string"
}

variable "maintenance_window" {
  description = "Preferred maintenance window for this memcached"
  type        = "string"
}

variable "node_type" {
  description = "Node type for this memcached"
  type        = "string"
}

variable "num_cache_nodes" {
  description = "Number of cache nodes for this memcached"
  type        = "string"
}

variable "parameter_group_name" {
  description = "Name of the parameter group used by this memcached cluster"
  type        = "string"
}

variable "security_group_ids" {
  description = "IDs of security groups to be attached to this memcached cluster"
  type        = "list"
}

variable "apply_immediately" {
  description = "Whether to apply cluster changes immediately, or during maintenance window"
  type        = "string"
}

variable "engine_version" {
  description = "Version of memcached engine for this cluster"
  type        = "string"
  default     = ""
}

variable "subnet_group_name" {
  description = "Name of the subnet group this cluster resides in"
  type        = "string"
}

variable "notification_topic_arn" {
  description = "ARN of the SNS topic that should receive notification about this memcached cluster"
  type        = "string"
  default     = ""
}

variable "port" {
  description = "Port used for this memcached"
  type        = "string"
  default     = "11211"
}

variable "az_mode" {
  description = "Whether to provision in single-az or cross-az"
  type        = "string"
}

variable "additional_tags" {
  type        = "map"
  default     = {}
  description = "Common additional tags"
}
