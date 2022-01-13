resource "aws_s3_bucket" "test" {
  bucket = "test-fadhil-151220210925"
  acl    = "private"

  tags = {
    Name        = "test-fadhil-151220210925"
    Environment = "testing"
  }
}
