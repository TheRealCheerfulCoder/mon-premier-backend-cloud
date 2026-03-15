terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "docker" {}

# On définit l'image à utiliser
resource "docker_image" "java_app" {
  name         = "mon-app-optimisee:latest"
  keep_locally = true
}

# On définit le conteneur à lancer
resource "docker_container" "java_server" {
  image = docker_image.java_app.image_id
  name  = "mon-serveur-via-terraform"
  ports {
    internal = 8080
    external = 8090
  }
}