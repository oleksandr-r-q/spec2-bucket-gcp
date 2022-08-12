data "google_compute_instance_template" "generic" {
  name    = "instance-template-1"
  project = "alexs-project-239406"
}


resource "google_compute_instance_from_template" "tpl" {
  name = "test-${var.SANDBOX_ID}"
  
  source_instance_template = data.google_compute_instance_template.generic.id

  // Override fields from instance template
  can_ip_forward = false
  labels = {
    my_key = "my_value"
  }
}