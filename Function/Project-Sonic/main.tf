resource "aws_iam_user" "cloud" {
     name = split(":",var.cloud_users)[count.index]
     count = length(split(":",var.cloud_users))

}