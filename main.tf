module "sap-application-server" {
  source = "github.com/ovh/terraform-vsphere-sap-application-server.git?ref=v1.0.0"

  vsphere_compute_cluster                             = var.vsphere_compute_cluster
  vsphere_datacenter                                  = var.vsphere_datacenter
  sap_application_server_datastore                    = var.sap_application_server_datastore
  sap_application_servers                             = var.sap_application_servers
  sap_application_server_anti_affinity_rule_enable    = var.sap_application_server_anti_affinity_rule_enable
  sap_application_server_anti_affinity_rule_name      = var.sap_application_server_anti_affinity_rule_name
  sap_application_server_anti_affinity_rule_mandatory = var.sap_application_server_anti_affinity_rule_mandatory
  sap_application_server_folder                       = var.sap_application_server_folder
  sap_application_server_hardware_version             = var.sap_application_server_hardware_version
  sap_application_server_hosts_distribution           = var.sap_application_server_hosts_distribution
  sap_application_server_wait_for_guest_ip_timeout    = var.sap_application_server_wait_for_guest_ip_timeout
  sap_application_server_wait_for_guest_net_timeout   = var.sap_application_server_wait_for_guest_net_timeout
}

module "sap-hana-database" {
  source = "github.com/ovh/terraform-vsphere-sap-hana-database.git?ref=v1.0.1"

  vsphere_compute_cluster                        = var.vsphere_compute_cluster
  vsphere_datacenter                             = var.vsphere_datacenter
  sap_hana_database_datastore                    = var.sap_hana_database_datastore
  sap_hana_databases                             = var.sap_hana_databases
  sap_hana_database_thin_datastore_policy        = var.sap_hana_database_thin_datastore_policy
  sap_hana_database_thick_datastore_policy       = var.sap_hana_database_thick_datastore_policy
  sap_hana_database_anti_affinity_rule_enable    = var.sap_hana_database_anti_affinity_rule_enable
  sap_hana_database_anti_affinity_rule_name      = var.sap_hana_database_anti_affinity_rule_name
  sap_hana_database_anti_affinity_rule_mandatory = var.sap_hana_database_anti_affinity_rule_mandatory
  sap_hana_database_folder                       = var.sap_hana_database_folder
  sap_hana_database_hardware_version             = var.sap_hana_database_hardware_version
  sap_hana_database_hosts_distribution           = var.sap_hana_database_hosts_distribution
  sap_hana_database_wait_for_guest_ip_timeout    = var.sap_hana_database_wait_for_guest_ip_timeout
  sap_hana_database_wait_for_guest_net_timeout   = var.sap_hana_database_wait_for_guest_net_timeout
}
