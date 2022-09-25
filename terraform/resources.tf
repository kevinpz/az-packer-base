# Create the resource group
resource "azurerm_resource_group" "rg_image_builder" {
  name     = var.rg_name
  location = var.location
}

# Create the compute image galery
resource "azurerm_shared_image_gallery" "gallery" {
  name                = var.gallery_name
  resource_group_name = azurerm_resource_group.rg_image_builder.name
  location            = azurerm_resource_group.rg_image_builder.location
  description         = "Shared images and things."
}