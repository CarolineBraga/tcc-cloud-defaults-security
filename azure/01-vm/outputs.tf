output "vm_id" {
  description = "ID da máquina virtual criada."
  value       = azurerm_windows_virtual_machine.default.id
}

output "vm_public_ip" {
  description = "IP público da VM (se existir)."
  value       = azurerm_network_interface.default.private_ip_address
}
