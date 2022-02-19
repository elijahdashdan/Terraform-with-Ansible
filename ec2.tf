terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "ansible-control-server" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = "ansible-control"
  }
  key_name = var.key_name
}
resource "aws_instance" "ansible-web-server" {
  count         = length(var.webServers)
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = element(var.webServers, count.index)
  }
  key_name = var.key_name
}
