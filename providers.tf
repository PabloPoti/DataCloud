provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  backend "gcs" {
    bucket = "edempablo19-02-22"
    prefix = "terraform/state"
  }
}