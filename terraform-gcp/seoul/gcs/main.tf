resource "google_storage_bucket" "this" {
  name                        = "personal-service-${local.env}-${local.region}"
  location                    = module.const.dev.project.location.ASIA.name
  force_destroy               = true
  uniform_bucket_level_access = true

}

resource "google_compute_network" "this" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = true
}


resource "google_compute_subnetwork" "private" {
  name          = "my-vpc-subnet"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = "10.0.0.0/16"
}
