# EduardDzhagaev_infra
EduardDzhagaev Infra repository

ДЗ №6
##### Terraform-1 #####

В рамках обучения было выполнено:
Знакомство с Terraform. Установка Terraform. Проверка сервисного аккаунта в YC, переменные окружения и тп, подготовка окружения.
Работа с Terraform, подготовка конфигурации, тесты, диагностика, запуск инфраструктуры проектов,вывод, переменные.

#Запуск проекта:
terraform apply -auto-approve

#Проверка:
http://IP:9292


##############################################################################################################################


ДЗ №5
##### Packer #####

В рамках обучения было выполнено:
Знакомство с инструментом packer
Сборка образа с добавлением нужных пакетов
Доустановка приложения и проверка его работы


Для запуска потребуется настроенные 'yc'.

Для сборки образа необходимо заполнить файл 'variables.json' своими акутальными значениями:

mv variables.json.example variables.json
nano variables.json

#Pапустить сборщик

packer build -var-file="variables.json" ./ubuntu16.json

#Установка reddit

sudo apt-get update
sudo apt-get install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit/
bundle install
puma -d

#Проверка 
http://IP:9292









#### Data for VPN ####

bastion_IP = 51.250.14.243
someinternalhost_IP = 10.128.0.11



#### Connection method with one command ####

#ssh -J appuser@51.250.14.243 appuser@10.128.0.3
#
#[root@tao EduardDzhagaev_infra]# ssh -J appuser@51.250.3.183 appuser@10.128.0.3
#Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.4.0-156-generic x86_64)
#
# * Documentation:  https://help.ubuntu.com
# * Management:     https://landscape.canonical.com
# * Support:        https://ubuntu.com/advantage
#Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings
#
#Last login: Thu Aug 24 16:00:11 2023 from 10.128.0.20
#appuser@someinternalhost:~$


