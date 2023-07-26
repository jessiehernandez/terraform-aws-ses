data "aws_iam_policy_document" "ses" {
  statement {
    actions   = ["ses:SendEmail", "ses:SendRawEmail"]
    resources = [var.domain_arn]
    sid       = "AllowSendingEmails"
  }
}

resource "aws_iam_user" "this" {
  force_destroy        = var.force_destroy
  name                 = var.name
  path                 = var.path
  tags                 = var.tags
}

resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}

resource "aws_iam_user_policy" "this" {
  name   = "AllowSendingEmails"
  policy = data.aws_iam_policy_document.ses.json
  user   = aws_iam_user.this.name
}
