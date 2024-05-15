<!-- BEGIN_TF_DOCS -->


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | =2.23.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.23.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.10.0 |
| <a name="provider_azurerm.dataplatform01"></a> [azurerm.dataplatform01](#provider\_azurerm.dataplatform01) | 3.10.0 |
| <a name="provider_azurerm.sb01"></a> [azurerm.sb01](#provider\_azurerm.sb01) | 3.10.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rgbase"></a> [rgbase](#module\_rgbase) | ../../modules/resource_group | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_network_profile.anpccacontainers01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/network_profile) | resource |
| [azurerm_network_security_group.nsgccaprdcore01default](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/network_security_group) | resource |
| [azurerm_network_watcher.nwnetworkprd](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/network_watcher) | resource |
| [azurerm_private_dns_zone.privatelink_api_azureml_ms](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_azuredatabricks_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_azuresynapse_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_azurewebsites_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_blob_core_windows_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_canadacentral_kusto_windows_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_cognitiveservices_azure_com](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_dev_azuresynapse_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_dfs_core_windows_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_file_core_windows_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_notebooks_azure_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_servicebus_windows_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_sql_azuresynapse_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_sqlondemand_azuresynapse_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone.privatelink_vaultcore_azure_net](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_api_azureml_ms-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_azuredatabricks_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_azuresynapse_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_azurewebsites_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_blob_core_windows_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_canadacentral_kusto_windows_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_cognitiveservices_azure_com-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_dev_azuresynapse_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_dfs_core_windows_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_file_core_windows_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_notebooks_azure_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_servicebus_windows_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_sql_azuresynapse_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_sqlondemand_azuresynapse_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_dns_zone_virtual_network_link.privatelink_vaultcore_azure_net-vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_role_assignment.AzureContainerInstanceService-NetworkContributor-anpccacontainers01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/role_assignment) | resource |
| [azurerm_route_table.rtccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/route_table) | resource |
| [azurerm_route_table.rtccaprdcore01azureinternet](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/route_table) | resource |
| [azurerm_route_table.rtccaprdcore01fwoutside01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/route_table) | resource |
| [azurerm_subnet.snetccaprdcore01containers01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet.snetccaprdcore01data01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet.snetccaprdcore01directory01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet.snetccaprdcore01fwinside01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet.snetccaprdcore01fwmgmt01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet.snetccaprdcore01fwoutside01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet.snetccaprdcore01integration01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet.snetccaprdcore01privateendpoints01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet) | resource |
| [azurerm_subnet_network_security_group_association.nsgaccaprdcore01data01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association.nsgaccaprdcore01directory01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association.nsgccaprdcore01containers01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association.nsgccaprdcore01privateendpoints01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_route_table_association.fwoutside](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_route_table_association) | resource |
| [azurerm_subnet_route_table_association.rtaccaprdcore01azureinternetdata01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_route_table_association) | resource |
| [azurerm_subnet_route_table_association.rtaccaprdcore01containers01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_route_table_association) | resource |
| [azurerm_subnet_route_table_association.rtaccaprdcore01directory01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_route_table_association) | resource |
| [azurerm_subnet_route_table_association.rtaccaprdcore01privateendpoints01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/subnet_route_table_association) | resource |
| [azurerm_virtual_hub.vhubcca](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_hub) | resource |
| [azurerm_virtual_hub_connection.vhcvnetccadataplatform01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_hub_connection) | resource |
| [azurerm_virtual_hub_connection.vhcvnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_hub_connection) | resource |
| [azurerm_virtual_hub_connection.vhcvnetccasb01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_hub_connection) | resource |
| [azurerm_virtual_network.vnetccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network_peering.ccadataplatform01ccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.ccaprdcore01ccadataplatform01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.ccaprdcore01ccasb01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.ccasb01ccaprdcore01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_wan.vwancca](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/virtual_wan) | resource |
| [azurerm_vpn_gateway.vpngcca](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/vpn_gateway) | resource |
| [azurerm_vpn_gateway_connection.nab1313](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/vpn_gateway_connection) | resource |
| [azurerm_vpn_gateway_connection.nabfrn](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/vpn_gateway_connection) | resource |
| [azurerm_vpn_site.nab1313](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/vpn_site) | resource |
| [azurerm_vpn_site.nabfrn](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/resources/vpn_site) | resource |
| [azuread_service_principal.Azure_Container_Instance_Service](https://registry.terraform.io/providers/hashicorp/azuread/2.23.0/docs/data-sources/service_principal) | data source |
| [azurerm_virtual_network.vnetccadataplatform01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/data-sources/virtual_network) | data source |
| [azurerm_virtual_network.vnetccasb01](https://registry.terraform.io/providers/hashicorp/azurerm/3.10.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The Azure Region where the Resource should exist (scope: module). | `string` | `"Canada Central"` | no |
| <a name="input_rg_base_name"></a> [rg\_base\_name](#input\_rg\_base\_name) | Override the default base resource group name for the module (if null, it's set to rg-{parent\_folder\_name}). | `string` | `null` | no |

## Outputs

No outputs.


<!-- END_TF_DOCS -->
