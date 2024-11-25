module "s3-bucket_example_object" {
  source  = "terraform-aws-modules/s3-bucket/aws//examples/object"
  version = "4.2.2"

  bucket = "${var.project}-${var.environment}-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  force_destroy = true

  tags = merge(
    var.tags,
    {
      Name = "${var.project}-${var.environment}-bucket"
    }
  )
}
