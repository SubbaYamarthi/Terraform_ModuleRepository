resource "random_string" "random" {
    length = 6
    special= false
    upper=false

}
 resource "azurerm_storage_account" "stg_module" {
    name="${lower(var.name)}${random_string.random.result}"
    resource_group_name = var.resource_group_name
    location=var.location
    account_tier = "Standard"
    account_replication_type = "GRS"
   
 }