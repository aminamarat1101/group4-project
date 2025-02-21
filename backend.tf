resource "aws_s3_bucket" "example" {
  bucket = "group4-blue-green"

  tags = {
    Name        = "Group4"
    Environment = "test-project"
  }
}
