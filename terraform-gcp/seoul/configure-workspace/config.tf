terrafrom {
  required_version = "~> 1.0.0"

  backend "gcs" {
    bucket = "gcp-service-dev-terraform-1-1-0"
    key    = "configure-workspace/tfstate"
    region = module.const.regions.seoul
  }
}

provider "google" {
  project = "terraform-on-gcp-39710"
  region  = module.const.regions.seoul
}

module "const" { source = "./../const" }
