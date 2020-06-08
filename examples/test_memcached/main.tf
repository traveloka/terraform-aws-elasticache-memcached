data "aws_vpc" "develop" {
  filter {
    name   = "tag:Name"
    values = ["development-vpc"]
  }
}

data "aws_security_group" "default" {
  vpc_id = "${data.aws_vpc.develop.id}"
  name   = "default"
}

module "test_memcached" {
  source = "../../"

  product_domain = "tsi"
  service_name   = "tsiecis"
  environment    = "staging"
  description    = "Cache of ec2 inventory search data"

  engine_version       = "1.4.34"
  node_type            = "cache.m4.large"
  num_cache_nodes      = "2"
  az_mode              = "cross-az"
  subnet_group_name    = "test"
  parameter_group_name = "default.memcached1.4"
  maintenance_window   = "sun:15:00-sun:16:00"
  apply_immediately    = "true"

  security_group_ids = ["${data.aws_security_group.default.id}"]

  additional_tags = {
    testingtag = "test"
  }
}
