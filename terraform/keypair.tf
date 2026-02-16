resource "aws_key_pair" "strapi_key" {
  key_name   = "strapi-ec2"
  public_key = file("~/.ssh/strapi-ec2.pub")
}
