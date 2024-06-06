# AWS sağlayıcısını yapılandır
provider "aws" {
  region = "us-east-1"  # EC2 instance'ınızın oluşturulacağı AWS bölgesi
}

# EC2 instance için AMI ID'si değişkenini tanımla
variable "ami_id" {
  description = "EC2 instance için AMI ID'si"
  default     = "ami-04b70fa74e45c3917"  # Ubuntu Server 24.04 LTS (HVM), SSD Volume Type AMI ID
}

# EC2 instance oluştur
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  tags = {
    Name = "Free-Tier-EC2"
  }
}
