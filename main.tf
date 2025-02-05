#installing required stuff for installing terraform
#nginx ko install krne ke liye jo chije chahiye vo install krrha hai

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.0" # Use a version constraint, not a specific version
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest 
  name  = "nginx-tf"

  ports {
    internal = 80
    external = 80
  }
}
