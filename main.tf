provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

#State configuration removed - for use to terraform cloud
#terraform {
#  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
#    bucket = "ccl-iasweek-courses-2020"
#    key    = "course-terraform-2020"
#    region = "us-east-1"
#  }
#}