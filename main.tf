resource "aws_s3_bucket" "exampless" {
  count = length((var.bucket_list))
  bucket = var.bucket_list[count.index]


}

resource "aws_s3_bucket" "exampless2" {
    for_each = toset(var.bucket_list2)
    bucket = each.key # each-- for index


}
