# Amazon Simple Email Service (SES) Email Identities

This Terraform module that creates one or more verified email identities under Amazon Simple Email Service (SES).

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
| [aws_ses_email_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_email_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_emails"></a> [emails](#input\_emails) | List of emails to add as verified identities. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn_map"></a> [arn\_map](#output\_arn\_map) | Map of the email identities to their ARNs. |

## Authors

Module is maintained by [Jessie Hernandez](https://github.com/jessiehernandez).
