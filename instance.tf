provider "google" {
    credentials = var.creds
    project = "venkata-practice" 
    zone = "us-west4-b"
    region = "us-west4"
}

resource "google_compute_instance" "vm_instance" {

  name         = "terraform-instance-test"
  machine_type = "g1-small"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10-buster-v20220719"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }
}
