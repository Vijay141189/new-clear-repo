resource "azurerm_virtual_network" "tplink" {
    for_each = var.virtual_network_name
    name= each.value.name
    resource_group_name= each.value.resource_group 
    location = each.value.location
    address_space= each.value.address_space
    }