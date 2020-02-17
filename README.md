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
- [Terraform Versions](#Terraform Versions)
- [Terraform Providers](#Terraform Providers)
- [Getting Started](#Getting Started)
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
- SNS Topic, input variable that require the information from this resource are, `notification_topic_arn`

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
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing

This module accepting or open for any contributions from anyone, please see the [CONTRIBUTING.md](https://github.com/traveloka/terraform-aws-elasticache-memcached/blob/master/CONTRIBUTING.md) for more detail about how to contribute to this module.

## License

This module is under Apache License 2.0 - see the [LICENSE](https://github.com/traveloka/terraform-aws-elasticache-memcached/blob/master/LICENSE) file for details.