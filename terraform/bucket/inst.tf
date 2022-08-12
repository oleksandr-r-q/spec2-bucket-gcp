resource "google_compute_instance" "default" {
  name         = "test-${var.SANDBOX_ID}"
  machine_type = "e2-medium"
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }

}