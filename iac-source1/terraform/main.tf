module "stackgen_2ea25a38-fd59-40bb-ac70-3e9cacd2f073" {
  source                           = "./modules/aws_athena"
  athena_engine_version            = "AUTO"
  bucket_name                      = module.stackgen_e2c3eb90-18ac-4116-823a-027739cbbeb2.bucket_name
  bytes_scanned_cutoff_per_query   = 10485760
  database_force_destroy           = false
  database_name                    = "custom-module-tesing"
  encrypt_query_results            = true
  encryption_option                = "SSE_KMS"
  expected_bucket_owner            = null
  kms_key                          = null
  query                            = "query1"
  query_description                = null
  query_name                       = "test-query1"
  query_results_encryption_option  = "SSE_KMS"
  require_encryption_configuration = false
  result_output_location           = null
  set_acl_configuration            = false
  tags                             = {}
  workgroup_description            = null
  workgroup_force_destroy          = false
  workgroup_name                   = "test-wg"
  workgroup_state                  = "ENABLED"
}

module "stackgen_e2c3eb90-18ac-4116-823a-027739cbbeb2" {
  source                       = "./modules/aws_s3"
  block_public_access          = true
  bucket_name                  = "some-s3-bucket"
  bucket_policy                = ""
  enable_versioning            = true
  enable_website_configuration = false
  sse_algorithm                = "aws:kms"
  tags                         = {}
  website_error_document       = "404.html"
  website_index_document       = "index.html"
}

