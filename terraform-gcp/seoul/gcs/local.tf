locals {
  location = module.env.dev.location
  env      = module.env.dev.name
  region   = module.env.dev.ASIA.regions.seoul.region
  project  = module.env.dev.project
}
