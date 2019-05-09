resource "aws_s3_bucket" "b" {
    bucket = "shalabi-mybucket-c29df1"
    acl = "private"

    tags {
        Name = "shalabi-mybucket-c29df1"
    }
}
