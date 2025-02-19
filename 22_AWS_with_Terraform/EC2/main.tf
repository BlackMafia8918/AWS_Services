provider "aws" {
  region = "ap-south-1"  # Change to your preferred AWS region
}


resource "aws_instance" "example" {
  ami           = "ami-0c50b6f7dc3701ddd" # Amazon Linux AMI (Update as needed)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Instance"
  }
}


output "instance_id" {
  value = aws_instance.example.id
}
