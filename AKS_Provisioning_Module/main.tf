
module "ResourceGroup" {
  source   = "./Resource Group"
  name     = "Terraformmodule01"
  location = "West US"
}

module "StorageAccount" {
  source              = "./Storage Account"
  name                = "terraformstg01"
  resource_group_name = module.ResourceGroup.rg_name_out
  location            = "West US"


}

