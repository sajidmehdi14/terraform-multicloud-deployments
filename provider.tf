provider "aws" {
 region = "us-east-1"
// region = var.region  // verginia
}

# provider "aws" {
#  region = "us-east-2"
#  alias = "ohaio"
#  // region = var.region
# }

//provider "google" {
// region = "us-east-4"
// zone = "us-east-4c"
// credentials = file("~/project-name.json")
// project = "project-name"
//}

provider "google" {
//  region = "us-east4"
//  zone = "us-east4"
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = file("./fluted-castle-296212-cf6f7a01f8ce.json")
  project = "fluted-castle-296212"
}


provider "azurerm" {
 features {}
}

//terraform {
// required_version = "0.12.0"
//}

