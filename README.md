Terraform Module - s3
=====================

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.cloudfront_bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.b_block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.s3_encryption](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.s3_versioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encryption_enabled"></a> [encryption\_enabled](#input\_encryption\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | n/a | `string` | `"AES256"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `""` | no |
| <a name="input_inline_policy"></a> [inline\_policy](#input\_inline\_policy) | n/a | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Bucket Name | `string` | `""` | no |
| <a name="input_policy_enabled"></a> [policy\_enabled](#input\_policy\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_public_access"></a> [public\_access](#input\_public\_access) | n/a | `bool` | `false` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | n/a | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Output ARN S3 Bucket |
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | Output Domain name S3 Bucket |
| <a name="output_id"></a> [id](#output\_id) | Output ID S3 Bucket |
| <a name="output_region"></a> [region](#output\_region) | Output Region S3 Bucket |
