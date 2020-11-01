# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.34.0"
  features {}
}

module "full-webapp" {
  source  = "app.terraform.io/devops-mindset/full-webapp/azurerm"
  version = "0.0.1"
  name = var.name
  region = var.location
  # insert required variables here
}