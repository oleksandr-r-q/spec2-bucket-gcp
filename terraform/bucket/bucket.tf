resource "google_storage_bucket" "auto-expire" {
  name          = "test-${var.SANDBOX_ID}"
  location      = var.region
  force_destroy = true
}