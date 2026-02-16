variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  description = "Ubuntu AMI"
  default = "ami-0b6c6ebed2801a5cb"
}

variable "key_name" {
  description = "EC2 key pair name"
  default = "strapi-ec2"
}

variable "image_tag" {
  description = "Docker image tag"
}
