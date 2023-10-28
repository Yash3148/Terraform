resource "aws_s3_bucket" "dc_bucket" {
    bucket = "s3-bucket"
}

# For Defining bucket name in terraform using underscore will be invalid. So, s3_bucket is invalid name for s3 bucket.