module "iam_iam-user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "5.28.0"
  # insert the 1 required variable here
  name                          = "max"
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}


# web_server/main.tf
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  # ... other configuration ...
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

# main.tf
module "web_server" {
  source      = "./web_server" # Local module path
  ami_id      = "ami-12345678"
  instance_type = "t2.micro"
}

output "web_server_ip" {
  value = module.web_server.public_ip
}
