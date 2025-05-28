module "stackgen_0f83e604-227d-494f-9477-1735ce19eebf" {
  source                       = "./modules/aws_s3"
  block_public_access          = true
  bucket_name                  = "sg-bucket-sales-demo"
  bucket_policy                = ""
  enable_versioning            = true
  enable_website_configuration = false
  sse_algorithm                = "aws:kms"
  tags                         = {}
  website_error_document       = "404.html"
  website_index_document       = "index.html"
}

module "stackgen_31ac0045-76ab-4587-951d-bab58037d7db" {
  source                           = "./modules/aws_athena"
  athena_engine_version            = "AUTO"
  bucket_name                      = module.stackgen_0f83e604-227d-494f-9477-1735ce19eebf.bucket_name
  bytes_scanned_cutoff_per_query   = 10485760
  database_force_destroy           = false
  database_name                    = "sg-sales-demo"
  encrypt_query_results            = true
  encryption_option                = "SSE_KMS"
  expected_bucket_owner            = null
  kms_key                          = null
  query                            = "sg-query"
  query_description                = null
  query_name                       = "sg-name"
  query_results_encryption_option  = "SSE_KMS"
  require_encryption_configuration = false
  result_output_location           = null
  set_acl_configuration            = false
  tags                             = {}
  workgroup_description            = null
  workgroup_force_destroy          = false
  workgroup_name                   = "sg-work"
  workgroup_state                  = "ENABLED"
}

