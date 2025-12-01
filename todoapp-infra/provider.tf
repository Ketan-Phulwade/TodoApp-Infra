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
        storage_account_name = "ketanstrg"
       container_name       = "tfstate"
     key                  = "dev.terraform.tfstate"
 }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "95a90f4b-7e15-47ba-95ab-0d52bac078e4"
  
}
