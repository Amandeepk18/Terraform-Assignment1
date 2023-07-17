output "network-rg-name" {
  value = module.rg-N01142118.network-rg-name
}

output "network-rg-location" {
  value = module.rg-N01142118.network-rg-location
}
output "azurerm_subnet_name" {
  value = module.network-N01142118.azurerm_subnet_name
}

output "virtual_network_name" {
  value = module.network-N01142118.virtual_network_name.name
}

output "VirtualNetwork-Sapce" {
  value = module.network-N01142118.virtual_network_name.address_space
}

output "network_security_group_name1" {
  value = module.network-N01142118.network_security_group_name1.name
}
output "log_analytics_workspace_name" {
  value = module.common-N01142118.log_analytics_workspace_name.name
}
output "recovery_vault_name" {
  value = module.common-N01142118.recovery_vault_name.name
}
output "storage_account_name" {
  value = module.common-N01142118.storage_account_name.name
}
/*
output "linux-vm-ids" {
  value= module.vmlinux-N01142118.linux-vm-ids
}
*/
output "linux-vm-private-ip" {
  value = module.vmlinux-N01142118.linux-vm-private-ip
}
output "linux-vm-public-ip" {
  value = module.vmlinux-N01142118.linux-vm-public-ip
}
output "linux_virtual_machine" {
  value = module.vmlinux-N01142118.linux_virtual_machine
}
output "linux-vm-hostname" {
  value = module.vmlinux-N01142118.linux-vm-hostname
}
output "windows_vm_name" {
  description = "Name of the Windows virtual machine"
  value       = module.vmwindows-N01142118.windows_vm_name
  sensitive   = true
}
output "windows_vm_id" {
  value = module.vmwindows-N01142118.windows_vm_id
}

output "windows_vm_dns_labels" {
  description = "DNS label for the Windows virtual machine"
  value       = module.vmwindows-N01142118.windows_vm_dns_label
}

output "windows_vm_private_ip_address" {
  description = "Private IP address for the Windows virtual machine"
  value       = module.vmwindows-N01142118.windows_vm_private_ip_address
}

output "windows_vm_public_ip_address" {
  description = "Public IP address for the Windows virtual machine"
  value       = module.vmwindows-N01142118.windows_vm_public_ip_address
}
output "load_balancer_name" {
  value=module.loadbalancer-N01142118.load_balancer_name
}
output "database_name" {
  value=module.database-N01142118.db_name
  sensitive = true
}