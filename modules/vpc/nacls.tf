# nacls.tf

locals {
  public_subnet_count  = length(var.public_subnets)
  private_subnet_count = length(var.private_subnets)
}

# Default NACL
resource "aws_default_network_acl" "default" {
  default_network_acl_id = aws_vpc.this.default_network_acl_id

  tags = merge(
    {
      "Name"   = "${var.vpc_name}-default-nacl"
      "access" = "public"
    },
    var.tags,
  )

}

# Private NACL
resource "aws_network_acl" "private" {
  vpc_id = local.vpc_id

  subnet_ids = aws_subnet.private.*.id

  tags = merge(
    {
      "Name"   = "${var.vpc_name}-private-nacl"
      "access" = "public"
    },
    var.tags,
  )
}

# Public NACL
resource "aws_network_acl" "public" {
  vpc_id = local.vpc_id

  subnet_ids = aws_subnet.public.*.id

  tags = merge(
    {
      "Name"   = "${var.vpc_name}-public-nacl"
      "access" = "public"
    },
    var.tags,
  )

}
