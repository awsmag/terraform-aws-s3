variable "region" {
  type        = string
  description = "The AWS region to create the S3 bucket in."
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket."
}

variable "versioning" {
  type        = bool
  description = "Enable versioning for the S3 bucket (true to enable, false to disable)."
  default     = false
}

variable "encryption_algorithm" {
  type        = string
  description = "Server-side encryption algorithm (AES256, aws:kms)."
  default     = "AES256"
}

variable "kms_key_id" {
  type        = string
  description = "The AWS KMS key ID to use for encryption. Required if encryption_algorithm is aws:kms."
  default     = ""
}

variable "logging_bucket" {
  type        = string
  description = "The S3 bucket to send access logs to."
  default     = ""
}

variable "logging_prefix" {
  type        = string
  description = "The prefix for the access log files."
  default     = "logs/"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the bucket."
  default     = {}
}