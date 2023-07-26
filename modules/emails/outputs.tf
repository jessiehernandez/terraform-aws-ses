output "arn_map" {
  description = "Map of the email identities to their ARNs."
  value       = { for email in var.emails : email => aws_ses_email_identity.this[email].arn }
}
