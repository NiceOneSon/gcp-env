terraform {
  required_version = "~> 1.0.0"

  backend "gcs" {
    bucket = "gcp-service-dev-terraform-1-1-0"
    key    = "seoul/tfstate"

  }
}

provider "google" {
  project = local.tags.project
  region  = module.const.dev.project.region
}

module "const" { source = "./../const" }
