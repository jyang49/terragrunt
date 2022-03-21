variable name {
  type = string
}

variable machine_type {
  type = string
}

variable env {
  type = string
}

variable owner {
  type = string
  default = "jason"
}

resource "google_compute_instance" "mygce" {
  name         = var.name
  machine_type = var.machine_type

  labels = {
    env = var.env
    owner = var.owner
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
