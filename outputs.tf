output "sap_application_servers_ids" {
  description = "Map of SAP Application Server virtual machines names and its IDs"
  value       = module.sap-application-server.sap_application_servers_ids
}

output "affinity_hosts_sap_application_servers_rules" {
  description = "Map of affinity hosts SAP Application Servers virtual machines rules information"
  value       = module.sap-application-server.affinity_hosts_sap_application_servers_rules
}

output "anti_affinity_sap_application_servers_rule" {
  description = "Map of anti affinity SAP Application Servers virtual machines rule information"
  value       = module.sap-application-server.anti_affinity_sap_application_servers_rule
}

output "sap_hana_databases_ids" {
  description = "Map of SAP HANA databases virtual machines names and its IDs"
  value       = module.sap-hana-database.sap_hana_databases_ids
}

output "affinity_hosts_sap_hana_databases_rules" {
  description = "Map of affinity hosts SAP HANA databases virtual machines rules information"
  value       = module.sap-hana-database.affinity_hosts_sap_hana_databases_rules
}

output "anti_affinity_sap_hana_databases_rule" {
  description = "Map of anti affinity SAP HANA databases virtual machines rule information"
  value       = module.sap-hana-database.anti_affinity_sap_hana_databases_rule
}
