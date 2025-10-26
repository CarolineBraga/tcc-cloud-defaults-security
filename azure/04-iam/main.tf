resource "azurerm_resource_group" "default" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_user_assigned_identity" "default" {
  name                = var.user_name
  resource_group_name = var.resource_group_name
  location            = var.location
}
