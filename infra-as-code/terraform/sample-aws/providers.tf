#
# Terraform & Provider Versions
#

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.20"
    }

    http = {
      source  = "hashicorp/http"
      version = "~> 3.0"
    }
  }
}

#
# Provider Configuration
#

provider "aws" {
  region = "ap-south-1"
}

provider "http" {}

# Generic region data sources
data "aws_region" "current" {}
data "aws_availability_zones" "available" {}

