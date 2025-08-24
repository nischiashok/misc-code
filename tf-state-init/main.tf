provider "azurerm" {
  features {}
  subscription_id = "e0be8e24-25e7-4901-ad14-ea389c0f1289"
}

resource "azurerm_storage_account" "example" {
  name                     = "tfstate"
  resource_group_name      = "project-setup-1"
  location                 = "UK West"
  account_tier             = "Standard"
  account_replication_type = "GRS"

}