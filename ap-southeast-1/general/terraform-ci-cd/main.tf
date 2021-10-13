provider "aws" {
  region = "ap-southeast-1"
}
 
terraform {
  backend "s3" {
#    bucket         = "default-terraform-state-ap-southeast-1-460124681500"
    bucket         = "test-fadhil-bucket-lambda-220920211239"
    key            = "ap-southeast-1/general/terraform-ci-cd/terraform.tfstate"
    region         = "ap-southeast-1"
#    dynamodb_table = "default-terraform-state-ap-southeast-1-460124681500"
  }
}
 
module "terraform_ci_cd" {
  source            = "github.com/traveloka/terraform-aws-codebuild-terraform-ci-cd.git?ref=v0.3.2" // it's recommended to always use latest version
  terraform_version = "0.12.31" // it's recommended to always use latest version but make sure the module already supports that version
  product_domain    = "fdl" // ex. bei
  environment       = "testing" // ex. staging
  image             = "015110552125.dkr.ecr.ap-southeast-1.amazonaws.com/bei-codebuild-terraform-ci-cd-app:v0.2.6" // it's recommended to always use latest version
 
  source_repository_url = "https://github.com/traveloka/Test-github-terraform.git" // e.g. https://github.com/traveloka/tvlk-bei-stg-terraform-aws.git
}
