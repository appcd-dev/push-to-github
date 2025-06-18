module "stackgen_24f8806f-b0aa-52ec-a594-8e88072f2d32" {
  source             = "./modules/data_aws_ami"
  executable_users   = null
  include_deprecated = false
  most_recent        = true
  name_regex         = null
  owners             = ["amazon"]
}

module "stackgen_2b90e357-27b2-5bc1-a194-3d49ab34b057" {
  source              = "./modules/aws_s3_bucket"
  bucket              = "example-dev-bucket-83994"
  force_destroy       = false
  object_lock_enabled = false
  tags                = null
}

module "stackgen_4cccbd16-30a4-5461-b8bc-3a82f5e8fc3c" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "eu-west-2c"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = false
  tags = {
    Name = "public-subnet-0"
  }
  vpc_id = module.stackgen_b2d2c07b-8b8b-5d2b-adf6-5172e54cb897.id
}

module "stackgen_7edf1d48-153c-5ecb-b82a-263c1fb7f1b3" {
  source                      = "./modules/aws_instance"
  ami                         = "ami-0561ca6a3f5ce98d7"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2c"
  capacity_reservation_specification = [{
    capacity_reservation_preference = "open"
    capacity_reservation_target     = []
  }]
  cpu_options = [{
    amd_sev_snp      = ""
    core_count       = 1
    threads_per_core = 1
  }]
  credit_specification = [{
    cpu_credits = "standard"
  }]
  disable_api_stop        = false
  disable_api_termination = false
  ebs_block_device        = []
  ebs_optimized           = false
  enable_primary_ipv6     = null
  enclave_options = [{
    enabled = false
  }]
  ephemeral_block_device               = []
  get_password_data                    = false
  hibernation                          = false
  host_id                              = ""
  host_resource_group_arn              = null
  iam_instance_profile                 = ""
  instance_initiated_shutdown_behavior = "stop"
  instance_market_options              = []
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  ipv6_addresses                       = []
  key_name                             = "my-key"
  launch_template                      = []
  maintenance_options = [{
    auto_recovery = "default"
  }]
  metadata_options = [{
    http_endpoint               = "disabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }]
  monitoring                 = true
  network_interface          = []
  placement_group            = ""
  placement_partition_number = 0
  private_dns_name_options = [{
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }]
  private_ip = "10.0.1.87"
  root_block_device = [{
    delete_on_termination = true
    encrypted             = false
    iops                  = 100
    kms_key_id            = ""
    tags                  = {}
    throughput            = 0
    volume_size           = 8
    volume_type           = "gp2"
  }]
  secondary_private_ips = []
  security_groups       = []
  source_dest_check     = true
  subnet_id             = module.stackgen_4cccbd16-30a4-5461-b8bc-3a82f5e8fc3c.id
  tags = {
    Environment = "dev"
    Name        = "example-ec2"
  }
  tenancy                     = "default"
  timeouts                    = null
  user_data                   = null
  user_data_base64            = null
  user_data_replace_on_change = false
  volume_tags                 = {}
  vpc_security_group_ids      = ["sg-03a421f711f5b3954"]
}

module "stackgen_b2d2c07b-8b8b-5d2b-adf6-5172e54cb897" {
  source                               = "./modules/aws_vpc"
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = false
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  tags = {
    Name = "testvpc2382"
  }
}

module "stackgen_b814f8b2-25ff-5e10-8114-0e2b5fbd6f7f" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "eu-west-2c"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false
  tags = {
    Name = "public-subnet-1"
  }
  vpc_id = module.stackgen_b2d2c07b-8b8b-5d2b-adf6-5172e54cb897.id
}

module "stackgen_dfc6c5ff-6f5d-502a-816a-61592b3b12d4" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "eu-west-2c"
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-1"
  }
  vpc_id = module.stackgen_b2d2c07b-8b8b-5d2b-adf6-5172e54cb897.id
}

module "stackgen_e637515a-f2e2-5f78-95b7-1968fa8e30e7" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "eu-west-2c"
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-0"
  }
  vpc_id = module.stackgen_b2d2c07b-8b8b-5d2b-adf6-5172e54cb897.id
}

module "stackgen_eba2b836-92ab-5adb-825b-a9bea5fcfedb" {
  source                      = "./modules/aws_instance"
  ami                         = "ami-0561ca6a3f5ce98d7"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2c"
  capacity_reservation_specification = [{
    capacity_reservation_preference = "open"
    capacity_reservation_target     = []
  }]
  cpu_options = [{
    amd_sev_snp      = ""
    core_count       = 1
    threads_per_core = 1
  }]
  credit_specification = [{
    cpu_credits = "standard"
  }]
  disable_api_stop        = false
  disable_api_termination = false
  ebs_block_device        = []
  ebs_optimized           = false
  enable_primary_ipv6     = null
  enclave_options = [{
    enabled = false
  }]
  ephemeral_block_device               = []
  get_password_data                    = false
  hibernation                          = false
  host_id                              = ""
  host_resource_group_arn              = null
  iam_instance_profile                 = ""
  instance_initiated_shutdown_behavior = "stop"
  instance_market_options              = []
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  ipv6_addresses                       = []
  key_name                             = "my-key"
  launch_template                      = []
  maintenance_options = [{
    auto_recovery = "default"
  }]
  metadata_options = [{
    http_endpoint               = "disabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }]
  monitoring                 = true
  network_interface          = []
  placement_group            = ""
  placement_partition_number = 0
  private_dns_name_options = [{
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }]
  private_ip = "10.0.2.44"
  root_block_device = [{
    delete_on_termination = true
    encrypted             = false
    iops                  = 100
    kms_key_id            = ""
    tags                  = {}
    throughput            = 0
    volume_size           = 8
    volume_type           = "gp2"
  }]
  secondary_private_ips = []
  security_groups       = []
  source_dest_check     = true
  subnet_id             = module.stackgen_b814f8b2-25ff-5e10-8114-0e2b5fbd6f7f.id
  tags = {
    Environment = "dev"
    Name        = "example-ec2"
  }
  tenancy                     = "default"
  timeouts                    = null
  user_data                   = null
  user_data_base64            = null
  user_data_replace_on_change = false
  volume_tags                 = {}
  vpc_security_group_ids      = ["sg-03a421f711f5b3954"]
}

