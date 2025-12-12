terraform {
  required_version = ">= 1.3.0"
  required_providers {

    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.33.0"
      #version = "~> 3.66.0"
    }
  }   
   backend "azurerm" {
       resource_group_name  = "ketan-rg"
        storage_account_name = "strgtfstateketan"
       container_name       = "tfstate"
     key                  = "dev.terraform.tfstate"
 }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "98473d5b-c639-404e-9bf2-91559fe65ff8"
  
}
