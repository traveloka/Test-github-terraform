provider "aws" {
  region = "ap-southeast-1"
}

module "this" {
  # In actual use case, you have to replace the following line (line 8) with:
   source = "github.com/traveloka/terraform-aws-iam-role.git//modules/lambda?ref=v2.0.2"
 # source = "../../modules/lambda"

  product_domain   = "fdl"
  service_name     = "txtjobs"
  descriptive_name = "Periodic Scheduler"
  environment      = "testing"
}
