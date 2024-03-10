# service_vpc.tfvars

# vpc_name
vpc_name = "dev-vpc"

# vpc_cidr
vpc_cidr = "10.161.0.0/16"

# vpc_azs
vpc_azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

# vpc_private_subnets
vpc_private_subnets = ["10.161.0.0/19", "10.161.32.0/19", "10.161.64.0/19"]

# vpc_public_subnets
vpc_public_subnets = ["10.161.96.0/19", "10.161.128.0/19", "10.161.160.0/19"]

# enable_s3_endpoint
enable_s3_endpoint = true

# vpc_tags
vpc_tags = {
  "Name" = "dev-vpc"
}

# dns_private_zone_name
dns_private_zone_name = "REPLACE-ME."

# dns_public_zone_name
dns_public_zone_name = "REPLACE-ME."

# dns_reverse_zone_name
dns_reverse_zone_name = "10.161.in-addr.arpa."

#--------------------------------------------------------------------------

