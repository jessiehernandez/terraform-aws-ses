output "arn" {
  description = "ARN of the domain identity."
  value       = aws_ses_domain_identity.this.arn
}

output "verification_token" {
  description = "DNS verification token for the domain."
  value       = aws_ses_domain_identity.this.verification_token
}
