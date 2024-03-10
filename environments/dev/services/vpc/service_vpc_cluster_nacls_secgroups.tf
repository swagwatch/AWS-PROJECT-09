# service_vpc_cluster_nacls.secgroups.tf


# SECURITY GROUP RULES

# TCP INBOUND
resource "aws_security_group_rule" "cluster_security_group_rule_100" {
  security_group_id = module.vpc.cluster_sg_id
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 22
  to_port           = 22
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "cluster_security_group_rule_110" {
  security_group_id = module.vpc.cluster_sg_id
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 80
  to_port           = 80
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "cluster_security_group_rule_120" {
  security_group_id = module.vpc.cluster_sg_id
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 443
  to_port           = 443
  cidr_blocks       = ["0.0.0.0/0"]
}

# UDP INBOUND
resource "aws_security_group_rule" "cluster_security_group_rule_200" {
  security_group_id = module.vpc.cluster_sg_id
  type              = "ingress"
  protocol          = "udp"
  from_port         = 53
  to_port           = 53
  cidr_blocks       = ["0.0.0.0/0"]
}

# ICMP INBOUND
resource "aws_security_group_rule" "cluster_security_group_rule_130" {
  security_group_id = module.vpc.cluster_sg_id
  type              = "ingress"
  protocol          = "icmp"
  from_port         = -1
  to_port           = -1
  cidr_blocks       = ["0.0.0.0/0"]
}

# ALLOW ALL TRAFFIC OUTBOUND
resource "aws_security_group_rule" "cluster_security_group_rule_140" {
  security_group_id = module.vpc.cluster_sg_id
  type              = "egress"
  protocol          = -1
  from_port         = 0
  to_port           = 0
  cidr_blocks       = ["0.0.0.0/0"]
}
