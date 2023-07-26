# AWS Simple Email Service (SES) Terraform Module

Terraform modules which create Simple Email Service (SES) resources on AWS.

## Usage

`domain`:

```
module "domain" {
  source = "jessiehernandez/ses/aws//modules/domain"

  domain = "mycompany.com"
}
```

`user`:

```
module "user" {
  source = "jessiehernandez/ses/aws//modules/user"

  domain_arn = module.domain.arn
  name       = "johndoe"
}
```

## Authors

Modules are maintained by [Jessie Hernandez](https://github.com/jessiehernandez).
