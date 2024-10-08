provider "aws"{
  region = "us-east-1"
}

resource "aws_security_group" "securitygroup" {
  name = "securitygroup"
  description = "Permitir acesso HTTP e acesso a internet"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "keypar" {
  key_name = "terraform-keypar"
  public_key = file("C:/Users/Luana/.ssh/id_rsa.pub")
}

resource "aws_instance" "servidor" {
  ami = "ami-0c101f26f147fa7fd"
  instance_type = "t2.nano"
  user_data = file("user_data.sh")
  key_name = aws_key_pair.keypar.key_name
  vpc_security_group_ids = [aws_security_group.securitygroup.id]
}