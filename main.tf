module "rg-N01142118" {
  source   = "./modules/rg-N01142118"
  rg-name  = "N01142118-RG"
  location = "canadacentral"
  assignment01_tags = local.assignment01_tags
}

module "network-N01142118" {
  source     = "./modules/network-N01142118"
  rg-name    = module.rg-N01142118.network-rg-name
  location   = module.rg-N01142118.network-rg-location
  depends_on = [module.rg-N01142118]
}
module "common-N01142118" {
  source    = "./modules/common-N01142118"
  rg-name   = module.rg-N01142118.network-rg-name
  location  = module.rg-N01142118.network-rg-location
  subnet_id = module.network-N01142118.azurerm_subnet_name
  assignment01_tags = local.assignment01_tags
  depends_on = [
    module.rg-N01142118
  ]
}
module "vmlinux-N01142118" {
  source        = "./modules/vmlinux-N01142118"
  nb_count      = 3
  linux_vm_name = "linux-vmN01142118"
  rg_name       = module.rg-N01142118.network-rg-name
  location      = module.rg-N01142118.network-rg-location
  subnet_id     = module.network-N01142118.azurerm_subnet_name.id
  depends_on = [
    module.rg-N01142118,
    module.network-N01142118,
    module.common-N01142118
  ]
  storage_account_name = module.common-N01142118.storage_account_name.name
  storage_account_key  = module.common-N01142118.storage_account_key
  storage_act          = module.common-N01142118.storage_account_name
assignment01_tags = local.assignment01_tags
}

module "vmwindows-N01142118" {
  source          = "./modules/vmwindows-N01142118"
  windows_vm_name = "win-vm0n1142118"
  #windows_vm_id        = azurerm_windows_virtual_machine.windows_vm_id
  rg_name              = module.rg-N01142118.network-rg-name
  location             = module.rg-N01142118.network-rg-location
  subnet_id            = module.network-N01142118.azurerm_subnet_name.id
  depends_on           = [module.common-N01142118, module.network-N01142118, module.rg-N01142118]
  storage_account_name = module.common-N01142118.storage_account_name
assignment01_tags = local.assignment01_tags
}

module "datadisk-N01142118" {
  source       = "./modules/datadisk-N01142118"
  linux-vm-ids = module.vmlinux-N01142118.linux-vm-ids
  #linux_vm_name       = module.vmlinux-N01142118.linux_vm_name
  windows_vm_id = module.vmwindows-N01142118.windows_vm_id
  # windows_vm_name     = module.vmwindows-N01142118.windows_vm_name
  location   = module.rg-N01142118.network-rg-location
  rg_name    = module.rg-N01142118.network-rg-name
  depends_on = [module.rg-N01142118, module.vmwindows-N01142118, module.vmlinux-N01142118]
  assignment01_tags = local.assignment01_tags
}

module "loadbalancer-N01142118" {
  source        = "./modules/loadbalancer-N01142118"
  rg_name       = module.rg-N01142118.network-rg-name
  location      = module.rg-N01142118.network-rg-location
  vm_public_ip  = module.vmlinux-N01142118.linux-vm-public-ip
  linux-nic-id  = module.vmlinux-N01142118.nic_id[0]
  nb_count      = "3"
  linux_vm_name = module.vmlinux-N01142118.linux-vm-hostname
  subnet_id     = module.network-N01142118.azurerm_subnet_name
  depends_on = [
    module.rg-N01142118,
    module.vmlinux-N01142118,
  ]
  assignment01_tags = local.assignment01_tags
}
module "database-N01142118" {
  source                          = "./modules/database-N01142118"
  rg_name                         = module.rg-N01142118.network-rg-name
  location                        = module.rg-N01142118.network-rg-location
  depends_on = [
    module.rg-N01142118
  ]
  assignment01_tags                     = local.assignment01_tags
}