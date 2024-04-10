terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.2.0"
    }
  }
 backend "gcs" {
    bucket  = "240408-user52-tf-state"
    prefix  = "terraform/state"
  }

}


provider "google" {

  project = var.project_id

}
