provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    #    bucket         = "default-terraform-state-ap-southeast-1-460124681500"
    bucket = "test-fadhil-bucket-lambda-220920211239"
    key    = "examples/terraform.tfstate"
    region = "ap-southeast-1"
    #    dynamodb_table = "default-terraform-state-ap-southeast-1-460124681500"
  }
}

module "this" {
  # In actual use case, you have to replace the following line (line 8) with:
  source = "github.com/traveloka/terraform-aws-iam-role.git//modules/lambda?ref=v2.0.2"
  # source = "../../modules/lambda"

  product_domain   = "fdl"
  service_name     = "txtjobs3"
  descriptive_name = "Periodic Scheduler3"
  environment      = "testing"
}
