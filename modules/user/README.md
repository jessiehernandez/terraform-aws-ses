# Amazon Simple Email Service (SES) SMTP User

This Terraform module that creates an IAM user that can send emails via Amazon Simple Email Service (SES).

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [aws_iam_policy_document.ses](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_arn"></a> [domain\_arn](#input\_domain\_arn) | ARN of the SES domain. | `string` | n/a | yes |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | Destroy the user even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the user. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | Path in which to create the user. | `string` | `"/"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to all created resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | User ARN. |
| <a name="output_name"></a> [name](#output\_name) | User name. |
| <a name="output_ses_smtp_password_v4"></a> [ses\_smtp\_password\_v4](#output\_ses\_smtp\_password\_v4) | Secret access key converted into an SES SMTP password. |
| <a name="output_ses_smtp_username"></a> [ses\_smtp\_username](#output\_ses\_smtp\_username) | Access key ID, which is also the username to be used for sending emails. |

## Authors

Module is maintained by [Jessie Hernandez](https://github.com/jessiehernandez).
