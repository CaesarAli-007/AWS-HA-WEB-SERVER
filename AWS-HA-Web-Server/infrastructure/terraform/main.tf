provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  user_data = file("../scripts/install-webserver.sh")

  tags = {
    Name = "WebServer"
  }
} 