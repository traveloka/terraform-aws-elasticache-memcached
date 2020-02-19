# terraform-aws-elasticache-memcached

[![Release](https://img.shields.io/github/release/traveloka/terraform-aws-modules-template.svg)](https://github.com/traveloka/terraform-aws-modules-template/releases)
[![Last Commit](https://img.shields.io/github/last-commit/traveloka/terraform-aws-modules-template.svg)](https://github.com/traveloka/terraform-aws-modules-template/commits/master)
![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)

## Description

Terraform module to create AWS ElastiCache cluster for Memcached engine.

## Table of Content

- [Description](#Description)
- [Prerequisites](#Prerequisites)
- [Dependencies](#Dependencies)
- [Terraform Versions](#Terraform%20Versions)
- [Terraform Providers](#Terraform%20Providers)
- [Getting Started](#Getting_Started)
- [Inputs](#Inputs)
- [Outputs](#Outputs)
- [Contributing](#Contributing)
- [License](#License)
- [Acknowledgments](#Acknowledgments)

## Prerequisites

In order to provision this module, it is require some information from an existing resources as input parameter, those resources are:

- ElastiCache Parameter Group, input variable that require the information from this resource are, `parameter_group_name` 
- Security Group,  input variable that require the information from this resource are, `security_group_ids` 
- ElastiCache Subnet Group,  input variable that require the information from this resource are, `subnet_group_name`
- (optional) SNS Topic, input variable that require the information from this resource are, `notification_topic_arn`

Please note that some of the above resources may be optional it depends on the parameter you filled in the module input

## Dependencies

Doesn't have any dependencies to any other Terraform module

## Terraform Versions

Created and tested using Terraform version `0.11.14`

## Terraform Providers

| Name   | Version |
| ------ | ------- |
| aws    | ~> 2.49 |
| random | ~> 2.2  |

## Getting Started

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| apply\_immediately | Whether to apply cluster changes immediately, or during maintenance window | `string` | n/a | yes |
| az\_mode | Whether to provision in single-az or cross-az | `string` | n/a | yes |
| description | Description of what this memcached used for | `string` | `""` | no |
| engine\_version | Version of memcached engine for this cluster | `string` | `""` | no |
| environment | Environment of this memcached resides in | `string` | n/a | yes |
| maintenance\_window | Preferred maintenance window for this memcached | `string` | n/a | yes |
| node\_type | Node type for this memcached | `string` | n/a | yes |
| notification\_topic\_arn | ARN of the SNS topic that should receive notification about this memcached cluster | `string` | `""` | no |
| num\_cache\_nodes | Number of cache nodes for this memcached | `string` | n/a | yes |
| parameter\_group\_name | Name of the parameter group used by this memcached cluster | `string` | n/a | yes |
| port | Port used for this memcached | `string` | `"11211"` | no |
| product\_domain | Product domain abbreviation this memcached belongs to | `string` | n/a | yes |
| security\_group\_ids | IDs of security groups to be attached to this memcached cluster | `list` | n/a | yes |
| service\_name | Name of the service this memcached belongs to | `string` | n/a | yes |
| subnet\_group\_name | Name of the subnet group this cluster resides in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| az\_mode | The provisioning mode of this memcached |
| cluster\_id | The cluster identifier of this memcached |
| configuration\_endpoint | The configuration endpoint of this memcached |
| endpoint | The endpoint of this memcached |
| parameter\_group\_name | The parameter group used by this memcached |
| port | Port used for this memcached |
| security\_group\_ids | The security groups attached to this memcached |
| subnet\_group\_name | The subnet group name where this memcached resides in |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing

This module accepting or open for any contributions from anyone, please see the [CONTRIBUTING.md](https://github.com/traveloka/terraform-aws-elasticache-memcached/blob/master/CONTRIBUTING.md) for more detail about how to contribute to this module.

## License

This module is under Apache License 2.0 - see the [LICENSE](https://github.com/traveloka/terraform-aws-elasticache-memcached/blob/master/LICENSE) file for details.