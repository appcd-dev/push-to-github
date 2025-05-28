terraform {
  backend "s3" {
    bucket = "drift-detect-tfstates"
    key    = "sd-test-demo.tfstate"
    region = "us-east-2"
    encrypt = "true"
  }
}
