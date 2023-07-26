resource "aws_ses_email_identity" "this" {
  for_each = zipmap(var.emails, var.emails)

  email = each.key
}
