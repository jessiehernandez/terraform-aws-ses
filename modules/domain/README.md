# Amazon Simple Email Service (SES) Domain Identity

This Terraform module that creates an Amazon Simple Email Service domain identity.

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
| [aws_ses_domain_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | Name of the email domain. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the domain identity. |
| <a name="output_verification_token"></a> [verification\_token](#output\_verification\_token) | DNS verification token for the domain. |

## Authors

Module is maintained by [Jessie Hernandez](https://github.com/jessiehernandez).
