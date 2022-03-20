variable bucket_prefix {
  type = string
}

variable env {
  type = string
}

resource "aws_s3_bucket" "b" {
  bucket_prefix = var.bucket_prefix

  tags = {
    Environment = var.env
  }
}
