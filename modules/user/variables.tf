############
# REQUIRED #
############

variable "domain_arn" {
  description = "ARN of the SES domain."
  type        = string
}

variable "name" {
  description = "Name of the user."
  type        = string
}

############
# OPTIONAL #
############

variable "allowed_email_identities" {
  default     = []
  description = "ARNs of the email identities that this user will be allowed to send emails from."
  type        = list(string)
}

variable "force_destroy" {
  default     = false
  description = "Destroy the user even if it has non-Terraform-managed IAM access keys, login profile or MFA devices."
  type        = bool
}

variable "path" {
  default     = "/"
  description = "Path in which to create the user."
  type        = string
}

variable "tags" {
  default     = {}
  description = "Tags to apply to all created resources."
  type        = map(string)
}
