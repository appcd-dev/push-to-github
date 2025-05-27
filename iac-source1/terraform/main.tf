module "stackgen_031238de-adc8-51a3-91d9-c93de1930675" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "eu-west-3a"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Environment = "dev"
    Name        = "dev-public-subnet-0"
  }
  vpc_id = module.stackgen_558d7ac4-ccc6-5b7b-b41a-fa5157526267.id
}

module "stackgen_14816102-e587-5b6f-bab3-dff0045f4512" {
  source              = "./modules/aws_s3_bucket"
  bucket              = "athena-query-results-bucket-5wmk7e4p"
  force_destroy       = true
  object_lock_enabled = false
  tags = {
    Environment = "dev"
    Name        = "dev-athena-results"
  }
}

module "stackgen_2c912ed8-8a45-51b0-b0c5-cc6812d0a890" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "eu-west-3b"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  tags = {
    Environment = "dev"
    Name        = "dev-public-subnet-1"
  }
  vpc_id = module.stackgen_558d7ac4-ccc6-5b7b-b41a-fa5157526267.id
}

module "stackgen_34b80001-017a-5312-9144-65da25a068a9" {
  source = "./modules/aws_eks_cluster"
  access_config = [{
    authentication_mode                         = "CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }]
  bootstrap_self_managed_addons = true
  compute_config                = []
  eks_version                   = null
  enabled_cluster_log_types     = []
  encryption_config             = []
  kubernetes_network_config = [{
    elastic_load_balancing = [{
      enabled = false
    }]
    ip_family         = "ipv4"
    service_ipv4_cidr = "172.20.0.0/16"
    service_ipv6_cidr = ""
  }]
  name                  = "eks-cluster"
  outpost_config        = []
  remote_network_config = []
  role_arn              = "arn:aws:iam::180217099948:role/eks-cluster-eks-role"
  storage_config        = []
  tags = {
    Environment = "dev"
  }
  timeouts = null
  upgrade_policy = [{
    support_type = "EXTENDED"
  }]
  vpc_config = [{
    cluster_security_group_id = "sg-043b2f9aa928fa8ba"
    endpoint_private_access   = false
    endpoint_public_access    = true
    public_access_cidrs       = ["0.0.0.0/0"]
    security_group_ids        = []
    subnet_ids                = ["subnet-01cb21854923cccea", "subnet-0e487cc6581e914bb"]
    vpc_id                    = "vpc-00d2820275a539204"
  }]
  zonal_shift_config = []
}

module "stackgen_37476bf3-9a65-509a-b352-edea3c6656b2" {
  source                 = "./modules/data_aws_availability_zones"
  all_availability_zones = null
  exclude_names          = null
  exclude_zone_ids       = null
  state                  = null
}

module "stackgen_473ba727-cbcd-51d9-b1ab-49f583404fe7" {
  source           = "./modules/random_string"
  keepers          = null
  length           = 8
  lower            = true
  min_lower        = 0
  min_numeric      = 0
  min_special      = 0
  min_upper        = 0
  numeric          = true
  override_special = null
  special          = false
  upper            = false
}

module "stackgen_558d7ac4-ccc6-5b7b-b41a-fa5157526267" {
  source                               = "./modules/aws_vpc"
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  tags = {
    Environment = "dev"
    Name        = "dev-vpc"
  }
}

module "stackgen_63b6a8c7-d442-5a71-923d-61c60aa9c54d" {
  source                    = "./modules/data_aws_iam_policy_document"
  override_json             = null
  override_policy_documents = null
  policy_id                 = null
  source_json               = null
  source_policy_documents   = null
  statement = [{
    actions        = ["sts:AssumeRole"]
    condition      = []
    effect         = "Allow"
    not_actions    = []
    not_principals = []
    not_resources  = []
    principals = [{
      identifiers = ["eks.amazonaws.com"]
      type        = "Service"
    }]
    resources = []
    sid       = ""
  }]
}

module "stackgen_7ef7e820-8361-52fd-a35f-aebce364af00" {
  source                = "./modules/aws_iam_role"
  assume_role_policy    = "{\"Statement\":[{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"eks.amazonaws.com\"}}],\"Version\":\"2012-10-17\"}"
  description           = ""
  force_detach_policies = false
  inline_policy         = []
  max_session_duration  = 3600
  name                  = "eks-cluster-eks-role"
  path                  = "/"
  permissions_boundary  = ""
  tags = {
    Environment = "dev"
  }
}

module "stackgen_e7de1e20-14c7-5811-ba15-9963dc266cb8" {
  source                  = "./modules/aws_s3_bucket_public_access_block"
  block_public_acls       = true
  block_public_policy     = true
  bucket                  = module.stackgen_14816102-e587-5b6f-bab3-dff0045f4512.bucket
  ignore_public_acls      = true
  restrict_public_buckets = true
}

