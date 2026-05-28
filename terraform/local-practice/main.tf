terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}


resource "local_file" "example" {
  filename = var.filename
  content  = var.content
}

resource "local_file" "config" {
  filename = "./config.txt"
  content  = "This is a config file"
}

resource "local_file" "readme" {
  filename = "./readme.txt"
  content  = "This is a readme file"
}

resource "local_file" "notes" {
  filename = "./notes.txt"
  content  = "These are my notes"
} 
 
