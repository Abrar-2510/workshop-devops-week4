
# ----------------------- Security group for bastion -------------------------

resource "aws_security_group" "bastion_sg" {
  name        = "bastion_sg"
  description = "security group for bastion server"
  tags = {
    Name      = "bastion-sg"
    createdBy = "terraform : Abrar-2510"
  }
}

# inbound rules for bastion server
resource "aws_security_group_rule" "bastion_sg_inbound_allow_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] # allows ssh from anywhere  
  security_group_id = aws_security_group.bastion_sg.id
}

# outbound rules for bastion server
resource "aws_security_group_rule" "sg_inbound_allow_outbound_traffic" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.bastion_sg.id
}

