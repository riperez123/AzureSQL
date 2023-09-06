provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "SQLTest" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_mssql_server" "SQLServer" {
  name                         = var.sql_server
  resource_group_name          = azurerm_resource_group.SQLTest.name
  location                     = azurerm_resource_group.SQLTest.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

resource "azurerm_mssql_database" "SQLdb" {
  name           = var.sql_db
  server_id      = azurerm_mssql_server.SQLServer.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  sku_name       = "S0"
  zone_redundant = false

  tags = {
    sql = "move"
  }
}
