# TODO: Write an aws_s3_bucket resource that uses provider = aws.us_east.
#       Add required tags. Validate only — do NOT apply.


resource "aws_s3_bucket" "learn" {
  provider = aws.us_east
  bucket   = "learn-terraform-bucket-4215245"
  tags = {
    Name        = "learn-terraform-bucket-4215245"
    Environment = "learn"
    ManagedBy   = "terraform"
  }
}