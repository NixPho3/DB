resource "azurerm_resource_group" "terraform" {
   name     = var.resource_group_name
   location = var.location
}
module "linuxservers" {
  source  = "/home/Bilal/TerraB/linuxserver"
  resource_group_name      = var.resource_group_name
  location = var.location
  nombre_de_vm   = 2
  nombre_de_IP   = 2
  nombre_de_NIC  = 2
  source_image = ["OpenLogic","CentOS","7.5","latest"]
  }

resource "azurerm_sql_server" "example" {
  name                         = var.dbname
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
  tags = {
   environment = "production"
  }
}

