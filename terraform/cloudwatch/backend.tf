terraform {
  backend "local" {
    path = "terraform.tfstate"
  }

  required_version = ">= 1.1.0, < 2.0.0"
}
