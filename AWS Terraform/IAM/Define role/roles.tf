resource "aws_iam_user" "yoshita" {
  name = "yoshita"
}

data "template_file" "admin_access_policy" {
  template = file("admin_access_policy.json")
}

resource "aws_iam_user_policy" "admin_access" {
  name = "admin-access-policy"
  user = aws_iam_user.yoshita.name

  policy = data.template_file.admin_access_policy.rendered
}