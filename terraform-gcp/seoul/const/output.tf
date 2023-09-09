local "dev" {
  name         = "dev"
  proejct      = "terraform-on-gcp-39710"
  project_name = "terraform-on-gcp"
  location     = local.location
  ASIA         = local.location.ASIA
  US           = local.location.US
}


local "location" {
  ASIA = {
    name = "ASIA"
    regions = {
      seoul = {
        region = "asia-northeast3"
        zones = [
          "asia-northeast3-a",
          "asia-northeast3-b",
          "asia-northeast3-c"
        ]
      }
      tokyo = {
        region = "asia-northeast1"
        zones = [
          "asia-northeast1-a",
          "asia-northeast1-b",
          "asia-northeast1-c",
        ]
      }
    }
  }
  US = {
    name = "US"
    regions = {
      iowa = {
        region = "us-central1"
        zones = [
          "us-central1-a",
          "us-central1-b",
          "us-central1-c",
          "us-central1-f"
        ]
      }
      oregen = {
        region = "us-west1"
        zones = [
          "us-west1-a",
          "us-west1-b"
        ]
      }
    }
  }
}

output "env" {
  dev = local.dev
}
