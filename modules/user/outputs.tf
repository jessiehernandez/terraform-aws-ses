output "arn" {
  description = "User ARN."
  value       = aws_iam_user.this.arn
}

output "name" {
  description = "User name."
  value       = aws_iam_user.this.name
}

output "ses_smtp_username" {
  description = "Access key ID, which is also the username to be used for sending emails."
  sensitive   = true
  value       = aws_iam_access_key.this.id
}

output "ses_smtp_password_v4" {
  description = "Secret access key converted into an SES SMTP password."
  sensitive   = true
  value       = aws_iam_access_key.this.ses_smtp_password_v4
}
