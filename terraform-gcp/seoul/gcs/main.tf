resource "google_storage_bucket" "this" {
  name                        = "personal-service-${local.env}-${local.region}"
  location                    = module.const.dev.project.location.ASIA.name
  force_destroy               = true
  uniform_bucket_level_access = true

}
