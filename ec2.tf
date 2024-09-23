
# ------------- create aws ec2 bastion  --------------------------

resource "aws_instance" "bastion" {
  ami                         = var.ami
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.bastion_sg.id]
#   key_name                    = aws_key_pair.my_ssh_key.key_name
  associate_public_ip_address = true

  tags = {
    Name      = "bastion"
    createdBy = "terraform"
  }
}
