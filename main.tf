provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  # Enable versioning
  versioning {
    enabled = var.versioning
  }

  # Bucket encryption
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = var.encryption_algorithm
        kms_master_key_id = var.kms_key_id
      }
    }
  }

  # Access logging
  logging {
    target_bucket = var.logging_bucket
    target_prefix = var.logging_prefix
  }

  # Tags for the bucket
  tags = var.tags
}
