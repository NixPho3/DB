module "linuxservers" {
  source  = "/home/azureuser/TP2/"
  nombre_de_vm   = 2
  nombre_de_IP   = 2
  nombre_de_NIC  = 2
  source_image = ["OpenLogic","CentOS","7.5","latest"]
  }
/*module "linuxserver2" {
  source  = "/home/azureuser/TP2/"
  }*/
resource "azurerm_sql_server" "example" {
  name                         = "myexamplesqlserverclem"
  resource_group_name          = module.linuxservers.resource_group_name
  location                     = module.linuxservers.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
  tags = {
   environment = "production"
  }
}

