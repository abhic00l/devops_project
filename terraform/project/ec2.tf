resource "aws_key_pair" "terra-infra-key" {
  key_name   = "${var.environment}-infra-key"
  public_key = file("${path.module}/terra-key.pub")

  tags = {
    Environment = var.environment
  }
}

resource "aws_default_vpc" "default" {
  
}

resource "aws_security_group" "web_sg" {
  name        = "${var.environment}-security-group"
  description = "Allow HTTP and SSH traffic"
  vpc_id      = aws_default_vpc.default.id

  # Inbound Rules
  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # allow from anywhere
  }

  ingress {
    description = "Allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # restrict to internal only ✅
  }

  # Outbound Rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"            # -1 means ALL traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.environment}-web-sg"
  }
}

# EC2 Instance
resource "aws_instance" "web" {
  

  count = var.instance_count  
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terra-infra-key.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data = file("${path.module}/nginx.sh")

  # Storage
  root_block_device {
    volume_size           = var.environment == "prd" ? 20:var.ec2_root_storage_size    # GB
    volume_type           = "gp3"   # gp3 is cheaper than gp2
    encrypted             = true    # encrypt at rest
    delete_on_termination = true
  }
  tags = {
    name=var.instance_name
  }
  }