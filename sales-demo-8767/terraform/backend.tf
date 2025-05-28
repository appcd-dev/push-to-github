terraform {
  backend "s3" {
    bucket = "drift-detect-tfstate"
    key    = "testdemo.tfstate"
    region = "us-east-2"
    encrypt = "true"
  }
}
