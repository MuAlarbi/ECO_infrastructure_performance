# Default Security Group
resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.tf_vpc.id
}

# Create security group for ECO servers
resource "aws_security_group" "instance_sg" {
  name        = "instance_sg"
  description = "AWS Security Group for ECO servers"
  vpc_id      = aws_vpc.tf_vpc.id
  ingress {
     from_port   = 8080
     to_port     = 8003
     protocol    = "tcp"
     description = "Allow HTTPS access to ECO servers"
     cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow outbound traffic"
  }
  tags = {
    Name = "instance_sg"
  }
}

