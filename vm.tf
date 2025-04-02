onfigure the Google Cloud Provider
provider "google" {
  project     = "your-gcp-project-id"  # Replace with your GCP project ID
  region      = "us-central1"          # Change to your preferred region
}

# Create a Compute Engine instance
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-practice-vm"
  machine_type = "e2-micro"  # Free-tier eligible instance
  zone         = "us-central1-a"

  # Define the boot disk
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  # Use Debian OS
    }
  }

  # Define the network interface
  network_interface {
    network = "default"
    access_config {}  # Assigns an external IP
  }
}

