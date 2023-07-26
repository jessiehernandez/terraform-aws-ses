############
# REQUIRED #
############

variable "emails" {
  description = "List of emails to add as verified identities."
  nullable    = false
  type        = list(string)
}
