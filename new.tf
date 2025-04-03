
         "google" {
ogle" {
  project = "your-project-id"  # Replace with your GCP project ID
  region  = "us-central1"
}

resource "google_compute_instance" "vm_instance" {
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

  project = "your-project-id"  # Replace with your GCP project ID
  region  = "us-central1"
}

resource "google_compute_instance" "vm_instance" {
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
