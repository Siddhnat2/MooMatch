ource "google_compute_instance" "vm_instance" {
  name         = "my-vm-instance"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  # Use a Debian 11 image
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Ephemeral IP
    }
  }
}
