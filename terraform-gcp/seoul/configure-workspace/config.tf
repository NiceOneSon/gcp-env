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
  credentials = file("credential/terraform-on-gcp-39710-7b16e8345a6b.json")
}

module "const" { source = "./../const" }
