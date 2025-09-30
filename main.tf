terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
}

provider "azurerm" {
  features { }
  
  # subscription_id can be set via ARM_SUBSCRIPTION_ID environment variable
  # or uncomment and set here: subscription_id = "your-subscription-id"
}

resource "azurerm_resource_group" "dev_tf" {
  name     = "dev_tf_resources"
  location = "eastus"
}