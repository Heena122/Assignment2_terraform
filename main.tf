resource "aws_s3_bucket" "example" {
  count = length((var.bucket_list))
  bucket = var.bucket_list[count.index]
 
   # for_each = toset(var.bucket_list)
   # bucket = each.key # each-- for index

}