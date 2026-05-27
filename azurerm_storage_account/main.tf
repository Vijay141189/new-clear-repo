resource "azurerm_storage_account" "storage1_account" {
    for_each = var.storage_account_name
    name = each.value.name
    resource_group_name = each.value.resource_group
    location = each.value.location
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
}