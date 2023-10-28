provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

module "vpc" {
  source = "../modules/vpc"
}

module "app" {
  source          = "../modules/app"
  subnet_id       = module.vpc.vpc_id
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
}

module "db" {
  source          = "../modules/db"
  subnet_id       = module.vpc.vpc_id
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
}

#resource "yandex_compute_instance" "app" {
#  count       = var.app_count
#  platform_id = var.platform_id
#  name        = "reddit-app-${count.index}"

#  resources {
#    cores  = 2
#    memory = 2
#  }

#  boot_disk {
#    initialize_params {
#      # Указать id образа созданного в предыдущем домашем задании
#      image_id = var.image_id
#    }
#  }

#  network_interface {
#    # Указан id подсети default-ru-central1-a
#    subnet_id = var.subnet_id
#    nat       = true
#  }

#  network_interface {
#    subnet_id = yandex_vpc_subnet.app-subnet.id
#    nat = true
#  }

#  metadata = {
#    ssh-keys = "ubuntu:${file(var.public_key_path)}"
#  }

#  connection {
#    type = "ssh"
#    #    host = yandex_compute_instance.app.network_interface.0.nat_ip_address
#    host  = self.network_interface.0.nat_ip_address
#    user  = "ubuntu"
#    agent = false
#    # путь до приватного ключа
#    private_key = file(var.private_key_path)
#  }

#  provisioner "file" {
#    source      = "files/puma.service"
#    destination = "/tmp/puma.service"
#  }

#  provisioner "remote-exec" {
#    script = "files/deploy.sh"
#  }

#resource "yandex_vpc_network" "app-network" {
#  name = "reddit-app-network"
#}

#resource "yandex_vpc_subnet" "app-subnet" {
#  name           = "reddit-app-subnet"
#  zone           = "ru-central1-a"
#  network_id     = "${yandex_vpc_network.app-network.id}"
#  v4_cidr_blocks = ["192.168.10.0/24"]
#}
#}
