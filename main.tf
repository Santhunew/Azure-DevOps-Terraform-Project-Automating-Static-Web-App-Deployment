#Resource Group creating for WebApp
resource "azurerm_resource_group" "Webapprg" {
  name     = var.resource_group_name
  location = var.location
}

#Azure WebApp creation
resource "azurerm_static_web_app" "WebApp" {
    name                = var.webapp_name
    location            = var.location
    resource_group_name = azurerm_resource_group.Webapprg.name
    sku_tier            = "Free"
    sku_size            = "Free"
}

