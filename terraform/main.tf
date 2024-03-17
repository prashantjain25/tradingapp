provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Name       = "feeconsumer"
      Repository = "https://github.com/prashantjain25/tradingapp"
    }
  }
}

data "aws_default_tags" "default" {}

locals {
  name = data.aws_default_tags.default.tags["Name"]
}