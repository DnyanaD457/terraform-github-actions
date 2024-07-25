provider "aws" {
  region = "us-west-2" # Change this to your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Use your desired AMI
  instance_type = var.instance_type

  tags = {
    Name = "ExampleInstance"
  }
}

variable "instance_type" {
  default = "t2.micro" # Specify your instance size here
}
 