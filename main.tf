terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "vm_local" {
  name      = "vm-aula-terraform-final"
  image     = "https://vagrantcloud.com/ubuntu/boxes/bionic64/versions/20230607.0.0/providers/virtualbox.box"
  cpus      = 1
  memory    = "512 mib"

  # Mudamos a configuração de rede para simplificar
  network_adapter {
    type           = "hostonly"
    host_interface = "VirtualBox Host-Only Ethernet Adapter"
  }
}

# Ajustando o output para apontar para o novo nome do recurso
output "status_da_vm" {
  value = "A VM ${virtualbox_vm.vm_local.name} foi criada com sucesso localmente!"
}