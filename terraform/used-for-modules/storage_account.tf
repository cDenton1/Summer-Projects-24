### Storage Account ###
resource "azurerm_storage_account" "storage_account" {

  name                            = var.storage_account_name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  tags                            = var.tags

  account_tier                    = "Standard"
  account_replication_type        = var.replication_type #"ZRS"
  account_kind                    = "StorageV2"
  enable_https_traffic_only       = true
  min_tls_version                 = "TLS1_2"
  is_hns_enabled                  = var.is_hns_enabled
  allow_nested_items_to_be_public = false
  
  blob_properties {
    versioning_enabled            = var.versioning_enabled
    change_feed_enabled           = var.change_feed_enabled
    delete_retention_policy {
      days = var.delete_retention_policy
    }
    container_delete_retention_policy {
      days = var.container_delete_retention_policy
    }

    cors_rule {
    allowed_headers               = var.allowed_headers
    allowed_methods               = var.allowed_methods
    allowed_origins               = var.allowed_origins
    exposed_headers               = var.exposed_headers
    max_age_in_seconds            = var.max_age_in_seconds
    }
  }
  
  network_rules {
    default_action                = var.default_action
    bypass                        = ["AzureServices"]
    ip_rules                      = var.ip_rules
    # virtual_network_subnet_ids  = []
    private_link_access {
      endpoint_resource_id        = var.endpoint_resource_id
      endpoint_tenant_id          = var.endpoint_tenant_id
  }
  }

}

### Containers ###
resource "azurerm_storage_container" "container" {
  for_each = toset( var.storage_account_containers )
    name = each.key
    storage_account_name  = azurerm_storage_account.storage_account.name
    container_access_type = "private"
}

### Private Endpoints ###
module "private_endpoint" {
  source                         ="../private_endpoint" #"C:/Dev/Repo/azure-iac-tfc/modules//private_endpoint"  # 
  for_each = {
      for index, endpoint in var.private_endpoints:
        endpoint.subresource_type => endpoint
    }
    
    resource_group_name            = var.resource_group_name
    location                       = var.location
    tags                           = var.tags  
    
    subresource_type               = each.value.subresource_type
    private_dns_zone_id            = each.value.zone_id 
    subnet_id                      = each.value.subnet_id 
    private_connection_resource_id = azurerm_storage_account.storage_account.id
    resource_base_name             = azurerm_storage_account.storage_account.name

}
