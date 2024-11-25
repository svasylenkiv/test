resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  acl    = var.acl

  versioning {
    enabled = var.versioning_enabled
  }

  force_destroy = var.force_destroy

  tags = merge(
    var.tags,
    {
      Name        = "${var.project}-${var.environment}-s3-bucket"
      Environment = var.environment
    }
  )
}

output "bucket_name" {
  value = aws_s3_bucket.main.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.main.arn
}

output "bucket_id" {
  value = aws_s3_bucket.main.id
}
