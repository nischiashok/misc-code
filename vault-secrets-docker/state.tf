provider "vault" {
  address = "http://vault.omshiva.shop:8200"
  token   = var.token
}

terraform {
  backend "azurerm" {
    use_cli              = true
    subscription_id      = "e0be8e24-25e7-4901-ad14-ea389c0f1289"
    resource_group_name  = "project-setup-1"
    storage_account_name = "nishiashoksatfstate"
    container_name       = "roboshop-state-files"
    key                  = "vault.terraform.tfstate"
  }
}
