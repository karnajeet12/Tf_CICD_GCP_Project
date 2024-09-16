provider "google" {
  project     = "erudite-azimuth-432615-c1"
  region      = "us-central1"
  zone        = "us-central1-c"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "erudite-azimuth-432615-c1-cicd-bucket"
  location      = "US"
  force_destroy = true
  project = "erudite-azimuth-432615-c1"
  public_access_prevention = "enforced"
}

#