module "stackgen_02cdd473-eeb6-42a0-8f82-983f2fa8b43e" {
  source                           = "./modules/aws_athena"
  athena_engine_version            = "AUTO"
  bucket_name                      = module.stackgen_51ed38bd-41dc-4e0c-ab87-a909fa78978b.arn
  bytes_scanned_cutoff_per_query   = 10485760
  database_force_destroy           = false
  database_name                    = "test-athena-2905"
  encrypt_query_results            = true
  encryption_option                = "SSE_KMS"
  expected_bucket_owner            = null
  kms_key                          = null
  query                            = "Select * from table"
  query_description                = ""
  query_name                       = "test-query-2905"
  query_results_encryption_option  = "SSE_KMS"
  require_encryption_configuration = false
  result_output_location           = null
  set_acl_configuration            = false
  tags                             = {}
  workgroup_description            = null
  workgroup_force_destroy          = false
  workgroup_name                   = "test-wg-2905"
  workgroup_state                  = "ENABLED"
}

module "stackgen_51ed38bd-41dc-4e0c-ab87-a909fa78978b" {
  source        = "./modules/aws_external"
  arn           = "arn:aws:s3:::drift-detect-tfstates"
  resource_type = aws_s3
}

