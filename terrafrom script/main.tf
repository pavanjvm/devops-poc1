provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "example-rg"
  location = "East US"
}

module "vnet" {
  source              = "./modules/vnet"
  name                = "example-vnet"
  address_space       = ["10.0.0.0/8"]
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tags                = { environment = "dev" }
}

module "subnet" {
  source              = "./modules/subnet"
  name                = "example-subnet"
  resource_group_name = azurerm_resource_group.main.name
  virtual_network_name = module.vnet.name
  address_prefixes    = ["10.0.1.0/24"]
}

module "nsg" {
  source              = "./modules/nsg"
  name                = "example-nsg"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tags                = { environment = "dev" }
}

module "route_table" {
  source              = "./modules/route_table"
  name                = "example-rt"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  tags                = { environment = "dev" }
}

module "nat_gateway" {
  source              = "./modules/nat_gateway"
  name                = "example-natgw"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku_name            = "Standard"
  tags                = { environment = "dev" }
}

module "application_gateway" {
  source                        = "./modules/application_gateway"
  name                          = "example-appgw"
  location                      = azurerm_resource_group.main.location
  resource_group_name           = azurerm_resource_group.main.name
  sku_name                      = "WAF_v2"
  sku_tier                      = "WAF_v2"
  sku_capacity                  = 2
  gateway_ip_configuration_name = "appgw-ipcfg"
  subnet_id                     = module.subnet.id
  frontend_port_name            = "frontendPort"
  frontend_port                 = 80
  frontend_ip_configuration_name = "frontendIP"
  public_ip_address_id          = null # Replace with a public IP resource if needed
  tags                          = { environment = "dev" }
}

module "lb" {
  source                        = "./modules/lb"
  name                          = "example-lb"
  location                      = azurerm_resource_group.main.location
  resource_group_name           = azurerm_resource_group.main.name
  sku                           = "Standard"
  frontend_ip_configuration_name = "lb-frontend"
  public_ip_address_id          = null # Replace with a public IP resource if needed
  tags                          = { environment = "dev" }
}

module "vmss" {
  source              = "./modules/vmss"
  name                = "example-vmss"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  subnet_id           = module.subnet.id
  admin_username      = "azureuser"
  admin_password      = "P@ssword1234!" # Use a secure method in production
  tags                = { environment = "dev" }
}

module "aks" {
  source              = "./modules/aks"
  name                = "example-aks"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "exampleaks"
  vnet_subnet_id      = module.subnet.id
  tags                = { environment = "dev" }
} 