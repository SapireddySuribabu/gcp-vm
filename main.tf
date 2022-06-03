data "google_project" "project" {
  project_id = var.project_id
}

# resource "google_service_account" "default" {
#   project      = var.project_id
#   account_id   = var.service_account_id
#   display_name = var.Service_Account
# }

resource "google_compute_instance" "default" {
  project      = var.project_id
  name         = var.test
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  // Local SSD disk
#   scratch_disk {
#     interface = var.interface
#   }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

#   service_account {
#     # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
#     email  = var.google_service_account_default_email
#     scopes = ["cloud-platform"]
#   }
}


