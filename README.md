<!-- BEGIN_TF_DOCS -->
# OVHcloud SAP system Terraform module

Terraform module to create a SAP system on VMware on OVHcloud.
You have the possibility to create many SAP Application Servers virtual machines and SAP HANA databases virtual machines with different parameters.

## vSphere user requirements

User in the vSphere client with the following permissions:
- vSphere access: Read/Write
- Access to the VM Network: Operator
- Access to the V(X)LANs: Operator

## How to use this module

This repository has an example folder which includes several ways to use this module.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.5.5 |
| <a name="requirement_vsphere"></a> [vsphere](#requirement_vsphere) | >= 2.4.1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_sap_application_server_datastore"></a> [sap_application_server_datastore](#input_sap_application_server_datastore) | Name of the datastore to store SAP Application Servers virtual machines | `string` | n/a | yes |
| <a name="input_sap_application_servers"></a> [sap_application_servers](#input_sap_application_servers) | List of SAP Application Servers virtual machines wanted with these parameters (mandatory, even if empty).<br><br>  Example:<br>  [<br>    &emsp;{<br>&emsp;&emsp;      "name"                    = "sidscs",<br>&emsp;&emsp;      "model"                   = "",<br>&emsp;&emsp;      "cpus"                    = "4",<br>&emsp;&emsp;      "cpus_per_socket"         = "4",<br>&emsp;&emsp;      "memory"                  = "4096",<br>&emsp;&emsp;      "custom_disks"            = false,<br>&emsp;&emsp;      "disks"                   = [],<br>&emsp;&emsp;      "networks"                = ["VLAN20"],<br>&emsp;&emsp;      "guest_id"                = "sles15_64Guest",<br>&emsp;&emsp;      "vsphere_content_library" = "",<br>&emsp;&emsp;      "template"                = "",<br>&emsp;&emsp;      "iso_datastore"           = "",<br>&emsp;&emsp;      "iso_path"                = "",<br>&emsp;&emsp;      "vapp_options"            = {}<br>    &emsp;},<br>&emsp;{<br>&emsp;&emsp;      "name"                    = "sidpas",<br>&emsp;&emsp;      "model"                   = "M",<br>&emsp;&emsp;      "cpus"                    = "",<br>&emsp;&emsp;      "cpus_per_socket"         = 4,<br>&emsp;&emsp;      "memory"                  = "",<br>&emsp;&emsp;      "custom_disks"            = true,<br>&emsp;&emsp;      "disks" = [<br>        &emsp;&emsp;&emsp;&emsp;{ "id" : 0, "label" : "disk0", "size" : "128", "thin_provisioned" : true, "eagerly_scrub": false, "datastore_name" : "vsanDatastore", "datastore_policy" : "vSAN Default Storage Policy" },<br>&emsp;        &emsp;&emsp;&emsp;{ "id" : 1, "label" : "disk1", "size" : "128", "thin_provisioned" : true, "eagerly_scrub": false, "datastore_name" : "vsanDatastore", "datastore_policy" : "vSAN Default Storage Policy" },<br>&emsp;        &emsp;&emsp;&emsp;{ "id" : 2, "label" : "disk2", "size" : "64", "thin_provisioned" : true, "eagerly_scrub": false, "datastore_name" : "vsanDatastore", "datastore_policy" : "vSAN Default Storage Policy" }<br>&emsp;&emsp;&emsp;],<br>&emsp;&emsp;      "networks"                = ["VLAN20"],<br>&emsp;&emsp;      "guest_id"                = "sles15_64Guest",<br>&emsp;&emsp;      "vsphere_content_library" = "",<br>&emsp;&emsp;      "template"                = "",<br>&emsp;&emsp;      "iso_datastore"           = "",<br>&emsp;&emsp;      "iso_path"                = "",<br>&emsp;&emsp;      "vapp_options"            = {}<br>   &emsp;}<br>  ] | `list(any)` | n/a | yes |
| <a name="input_sap_hana_database_datastore"></a> [sap_hana_database_datastore](#input_sap_hana_database_datastore) | Name of the datastore to store SAP HANA databases virtual machines | `string` | n/a | yes |
| <a name="input_sap_hana_databases"></a> [sap_hana_databases](#input_sap_hana_databases) | List of SAP HANA databases virtual machines wanted with these parameters (mandatory, even if empty).<br><br>  Example:<br>  [<br>    &emsp;{<br>&emsp;&emsp;      "name"                    = "sidhana1",<br>&emsp;&emsp;      "model"                   = "M",<br>&emsp;&emsp;      "cpus"                    = "",<br>&emsp;&emsp;      "cpus_per_socket"         = "48",<br>&emsp;&emsp;      "memory"                  = "",<br>&emsp;&emsp;      "custom_disks"            = false,<br>&emsp;&emsp;      "scsi_controller_count"   = "",<br>&emsp;&emsp;      "disks"                   = [],<br>&emsp;&emsp;      "networks"                = ["VLAN20"],<br>&emsp;&emsp;      "guest_id"                = "sles15_64Guest",<br>&emsp;&emsp;      "vsphere_content_library" = "",<br>&emsp;&emsp;      "template"                = "",<br>&emsp;&emsp;      "iso_datastore"           = "",<br>&emsp;&emsp;      "iso_path"                = "",<br>&emsp;&emsp;      "vapp_options"            = {}<br>    &emsp;},<br>&emsp;{<br>&emsp;&emsp;      "name"                    = "sidhana2",<br>&emsp;&emsp;      "model"                   = "S",<br>&emsp;&emsp;      "cpus"                    = "",<br>&emsp;&emsp;      "cpus_per_socket"         = "24",<br>&emsp;&emsp;      "memory"                  = "",<br>&emsp;&emsp;      "custom_disks"            = false,<br>&emsp;&emsp;      "scsi_controller_count"   = "",<br>&emsp;&emsp;      "disks"                   = [],<br>&emsp;&emsp;      "networks"                = ["VLAN20"],<br>&emsp;&emsp;      "guest_id"                = "sles15_64Guest",<br>&emsp;&emsp;      "vsphere_content_library" = "",<br>&emsp;&emsp;      "template"                = "",<br>&emsp;&emsp;      "iso_datastore"           = "",<br>&emsp;&emsp;      "iso_path"                = "",<br>&emsp;&emsp;      "vapp_options"            = {}<br>   &emsp;}<br>  ] | `list(any)` | n/a | yes |
| <a name="input_vsphere_compute_cluster"></a> [vsphere_compute_cluster](#input_vsphere_compute_cluster) | Name of the vSphere cluster<br>  Example: Cluster1 | `string` | n/a | yes |
| <a name="input_vsphere_datacenter"></a> [vsphere_datacenter](#input_vsphere_datacenter) | Name of the datacenter in vSphere interface | `string` | n/a | yes |
| <a name="input_sap_application_server_anti_affinity_rule_enable"></a> [sap_application_server_anti_affinity_rule_enable](#input_sap_application_server_anti_affinity_rule_enable) | Avoid running SAP Application Servers virtual machines on the same ESXi host | `bool` | `false` | no |
| <a name="input_sap_application_server_anti_affinity_rule_mandatory"></a> [sap_application_server_anti_affinity_rule_mandatory](#input_sap_application_server_anti_affinity_rule_mandatory) | When this value is true, prevents any virtual machine operations that may violate this rule | `bool` | `false` | no |
| <a name="input_sap_application_server_anti_affinity_rule_name"></a> [sap_application_server_anti_affinity_rule_name](#input_sap_application_server_anti_affinity_rule_name) | Name for the anti-affinity rule | `string` | `"sap-application-server-anti-affinity-rule"` | no |
| <a name="input_sap_application_server_folder"></a> [sap_application_server_folder](#input_sap_application_server_folder) | Name of the folder to store the SAP Application Server virtual machines | `string` | `""` | no |
| <a name="input_sap_application_server_hardware_version"></a> [sap_application_server_hardware_version](#input_sap_application_server_hardware_version) | Hardware compatibility between SAP Application Server virtual machines and ESXi host. By default, the newest version.<br>  More information available on [VMware](https://kb.vmware.com/s/article/2007240) | `number` | `19` | no |
| <a name="input_sap_application_server_hosts_distribution"></a> [sap_application_server_hosts_distribution](#input_sap_application_server_hosts_distribution) | Allow to set which SAP Application Server virtual machines have to run on a specific ESXi host.<br>  When mandatory is true, prevents any virtual machine operations that may violate this rule.<br><br>  Example:<br>  [<br>    &emsp;{<br>&emsp;&emsp;      "group_name" = "scs-ts1",<br>&emsp;&emsp;      "hosts" = ["192.168.2.1", "192.168.2.2"],<br>&emsp;&emsp;      "sap_application_servers" = ["sidscs"],<br>&emsp;&emsp;      "mandatory" = true<br>    &emsp;},<br>&emsp;{<br>&emsp;&emsp;      "group_name" = "pas-ts1",<br>&emsp;&emsp;      "hosts" = ["192.168.2.2"],<br>&emsp;&emsp;      "sap_application_servers" = ["sidpas"],<br>&emsp;&emsp;      "mandatory" = false<br>   &emsp;}<br>  ] | `list(any)` | `[]` | no |
| <a name="input_sap_application_server_wait_for_guest_ip_timeout"></a> [sap_application_server_wait_for_guest_ip_timeout](#input_sap_application_server_wait_for_guest_ip_timeout) | The amount of time, in minutes, to wait for an available guest IP address on the SAP Application Server virtual machine. | `number` | `0` | no |
| <a name="input_sap_application_server_wait_for_guest_net_timeout"></a> [sap_application_server_wait_for_guest_net_timeout](#input_sap_application_server_wait_for_guest_net_timeout) | The amount of time, in minutes, to wait for an available guest IP address on the SAP Application Server virtual machine. | `number` | `0` | no |
| <a name="input_sap_hana_database_anti_affinity_rule_enable"></a> [sap_hana_database_anti_affinity_rule_enable](#input_sap_hana_database_anti_affinity_rule_enable) | Avoid running SAP HANA databases virtual machines on the same ESXi host | `bool` | `false` | no |
| <a name="input_sap_hana_database_anti_affinity_rule_mandatory"></a> [sap_hana_database_anti_affinity_rule_mandatory](#input_sap_hana_database_anti_affinity_rule_mandatory) | When this value is true, prevents any virtual machine operations that may violate this rule | `bool` | `false` | no |
| <a name="input_sap_hana_database_anti_affinity_rule_name"></a> [sap_hana_database_anti_affinity_rule_name](#input_sap_hana_database_anti_affinity_rule_name) | Name for the anti-affinity rule | `string` | `"sap-hana-database-anti-affinity-rule"` | no |
| <a name="input_sap_hana_database_folder"></a> [sap_hana_database_folder](#input_sap_hana_database_folder) | Name of the folder to store the SAP HANA database virtual machines | `string` | `""` | no |
| <a name="input_sap_hana_database_hardware_version"></a> [sap_hana_database_hardware_version](#input_sap_hana_database_hardware_version) | Hardware compatibility between SAP HANA database virtual machines and ESXi host. By default, the newest version.<br>  More information available on [VMware](https://kb.vmware.com/s/article/2007240) | `number` | `19` | no |
| <a name="input_sap_hana_database_hosts_distribution"></a> [sap_hana_database_hosts_distribution](#input_sap_hana_database_hosts_distribution) | Allow to set which SAP HANA database virtual machines have to run on a specific ESXi host.<br>  When mandatory is true, prevents any virtual machine operations that may violate this rule.<br><br>  Example:<br>  [<br>    &emsp;{<br>&emsp;&emsp;      "group_name" = "hana-primary-ts1",<br>&emsp;&emsp;      "hosts" = ["192.168.2.1", "192.168.2.2"],<br>&emsp;&emsp;      "sap_hana_databases" = ["sidhana1"],<br>&emsp;&emsp;      "mandatory" = true<br>    &emsp;},<br>&emsp;{<br>&emsp;&emsp;      "group_name" = "hana-secondary-ts1",<br>&emsp;&emsp;      "hosts" = ["192.168.2.2", "192.168.2.3"],<br>&emsp;&emsp;      "sap_hana_databases" = ["sidhana2"],<br>&emsp;&emsp;      "mandatory" = false<br>   &emsp;}<br>  ] | `list(any)` | `[]` | no |
| <a name="input_sap_hana_database_thick_datastore_policy"></a> [sap_hana_database_thick_datastore_policy](#input_sap_hana_database_thick_datastore_policy) | This Storage Policy must be a Thick provisioning | `string` | `""` | no |
| <a name="input_sap_hana_database_thin_datastore_policy"></a> [sap_hana_database_thin_datastore_policy](#input_sap_hana_database_thin_datastore_policy) | This Storage Policy must be a Thin provisioning | `string` | `""` | no |
| <a name="input_sap_hana_database_wait_for_guest_ip_timeout"></a> [sap_hana_database_wait_for_guest_ip_timeout](#input_sap_hana_database_wait_for_guest_ip_timeout) | The amount of time, in minutes, to wait for an available guest IP address on the SAP HANA database virtual machine. | `number` | `0` | no |
| <a name="input_sap_hana_database_wait_for_guest_net_timeout"></a> [sap_hana_database_wait_for_guest_net_timeout](#input_sap_hana_database_wait_for_guest_net_timeout) | The amount of time, in minutes, to wait for an available guest IP address on the SAP HANA database virtual machine. | `number` | `0` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_affinity_hosts_sap_application_servers_rules"></a> [affinity_hosts_sap_application_servers_rules](#output_affinity_hosts_sap_application_servers_rules) | Map of affinity hosts SAP Application Servers virtual machines rules information |
| <a name="output_affinity_hosts_sap_hana_databases_rules"></a> [affinity_hosts_sap_hana_databases_rules](#output_affinity_hosts_sap_hana_databases_rules) | Map of affinity hosts SAP HANA databases virtual machines rules information |
| <a name="output_anti_affinity_sap_application_servers_rule"></a> [anti_affinity_sap_application_servers_rule](#output_anti_affinity_sap_application_servers_rule) | Map of anti affinity SAP Application Servers virtual machines rule information |
| <a name="output_anti_affinity_sap_hana_databases_rule"></a> [anti_affinity_sap_hana_databases_rule](#output_anti_affinity_sap_hana_databases_rule) | Map of anti affinity SAP HANA databases virtual machines rule information |
| <a name="output_sap_application_servers_ids"></a> [sap_application_servers_ids](#output_sap_application_servers_ids) | Map of SAP Application Server virtual machines names and its IDs |
| <a name="output_sap_hana_databases_ids"></a> [sap_hana_databases_ids](#output_sap_hana_databases_ids) | Map of SAP HANA databases virtual machines names and its IDs |

## How do I contribute to this Terraform Module?

Contributions are very welcome! Check out the Contribution Guidelines for instructions.

## How is this Terraform Module versioned?

This Terraform Module follows the principles of Semantic Versioning. You can find each new release, along with the changelog, in the Releases Page.

During initial development, the major version will be 0 (e.g., 0.x.y), which indicates the code does not yet have a stable API. Once we hit 1.0.0, we will make every effort to maintain a backwards compatible API and use the MAJOR, MINOR, and PATCH versions on each release to indicate any incompatibilities.

## License

This code is released under the Apache 2.0 License. Please see LICENSE for more details.
<!-- END_TF_DOCS -->