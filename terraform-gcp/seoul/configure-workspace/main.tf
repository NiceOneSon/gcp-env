resource "google_compute_subnetwork" "public" {
  name          = "my-vpc-subnet"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = "10.0.0.0/16"
}