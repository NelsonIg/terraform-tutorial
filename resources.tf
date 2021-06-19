# resource "<provider>_<provider>" "name"{
#
# }

# virtual private cloud
# resource "aws_vpc" "first-vpc" {
#   cidr_block = "10.0.0.0/16"
#     tags = {
#       Name = "production"
#   }
# }

# resource "aws_subnet" "main" {
#   vpc_id     = aws_vpc.first-vpc.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "prod-subnet"
#   }
# }



resource "aws_instance" "my-first-server" {
  ami           = "ami-0aeeebd8d2ab47354"
  instance_type = "t2.micro"
  tags = {
      Name = "ubuntu"
  }
}

# second instance
resource "aws_instance" "my-second-server" {
  ami           = "ami-0aeeebd8d2ab47354"
  instance_type = "t2.micro"
}

# terraform init - looks for providers defined and downloads th
# terraform plan - show the changes that are to be made
# apply - apply change
# destroy - remove instances
# --auto-approve to skip to type 'yes'