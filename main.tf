terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.13.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

resource "null_resource" "execute_script" {
  provisioner "local-exec" {
    command = "powershell.exe ./buildImg.ps1"
    working_dir = "${path.module}"
  }
}



resource "docker_image" "my_app" {
  name         = "my-docker-app"
}

resource "docker_container" "my_container" {
  name     = "my-node-app-container-tf"
  image    = docker_image.my_app.name
  must_run = true
}