terraform {
  required_version = ">= 1.0"
}


provider "google" {
  project     = var.PROJECT
  region      = var.region
  zone        = var.zone
}