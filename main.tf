provider "azurerm" {
  version = "~> 1.27"
}

resource "azurerm_resource_group" "resg" {
  name     = "terraform-group"
  location = var.location
  tags     = var.tags
}

resource "azurerm_application_insights" "ai" {
  name                = "terraform-ai"
  resource_group_name = "${azurerm_resource_group.resg.name}"
  location            = "${azurerm_resource_group.resg.location}"
  application_type    = "Web"
  tags                = "${var.tags}"
}

