provider "vsphere" {
  vsphere_server = "pcc-xx-xx-xx-xx.ovh.com"
}

module "sap-application-server" {
  source = "github.com/ovh/terraform-vsphere-sap-application-server.git?ref=v1.0.0"

  sap_application_server_datastore = "ssd-xxxxxx"
  sap_application_servers = [
    {
      "name"                    = "ts1pas",
      "model"                   = "",
      "cpus"                    = "2",
      "cpus_per_socket"         = "2",
      "memory"                  = "1024",
      "custom_disks"            = false,
      "disks"                   = [],
      "networks"                = ["VLAN20"],
      "guest_id"                = "sles15_64Guest",
      "vsphere_content_library" = "",
      "template"                = "",
      "iso_datastore"           = "",
      "iso_path"                = "",
      "vapp_options"            = {}
    }
  ]
  vsphere_compute_cluster = "Cluster1"
  vsphere_datacenter      = "pcc-xx-xx-xx-xx_datacenterxxxx"
}

module "sap-hana-database" {
  source = "github.com/ovh/terraform-vsphere-sap-hana-database.git?ref=v1.0.1"

  sap_hana_database_datastore              = "vsanDatastore"
  sap_hana_database_thin_datastore_policy  = "vSAN Default Storage Policy"
  sap_hana_database_thick_datastore_policy = "SAP HANA VM Storage Policy"
  sap_hana_databases = [
    {
      "name"                    = "ts1han1",
      "model"                   = "S",
      "cpus"                    = "",
      "cpus_per_socket"         = "24",
      "memory"                  = "",
      "custom_disks"            = false,
      "scsi_controller_count"   = "",
      "disks"                   = []
      "networks"                = ["VLAN20"],
      "guest_id"                = "sles15_64Guest",
      "vsphere_content_library" = "",
      "template"                = "",
      "iso_datastore"           = "",
      "iso_path"                = ""
      "vapp_options"            = {}
    }
  ]
  vsphere_compute_cluster = "Cluster1"
  vsphere_datacenter      = "pcc-xx-xx-xx-xx_datacenterxxxx"
}
