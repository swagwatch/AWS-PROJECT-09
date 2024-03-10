# security_groups.tf

# Default Security Group
resource "aws_default_security_group" "default" {
  vpc_id = local.vpc_id

  tags = merge(
    {
      "Name"   = "${var.vpc_name}-default-sg"
      "access" = "public"
    },
    var.tags,
  )

}

# Private Security Group
resource "aws_security_group" "private" {
  vpc_id = local.vpc_id

  tags = merge(
    {
      "Name"   = "${var.vpc_name}-private-sg"
      "access" = "private"
    },
    var.tags,
  )
}

# Public Security Group
resource "aws_security_group" "public" {
  vpc_id = local.vpc_id

  tags = merge(
    {
      "Name"   = "${var.vpc_name}-public-sg"
      "access" = "public"
    },
    var.tags,
  )
}

# Cluster Security Group
resource "aws_security_group" "cluster" {
  vpc_id = local.vpc_id

  tags = merge(
    {
      "Name"   = "${var.vpc_name}-cluster-sg"
      "access" = "private"
    },
    var.tags,
  )
}
