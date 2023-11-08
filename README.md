# EduardDzhagaev_infra
EduardDzhagaev Infra repository

ДЗ №9
##### Ansible-2 #####

В рамках обучения было выполнено:

Созданы следующие playbooks:

общий playbook с tags и limit
общий playbook с разными plays
playbooks в разных файлах и вызов из другого плейбука
Provision в Packer. playbook integration в packer


ДЗ №8
##### Ansible-1 #####

В рамках обучения было выполнено:

Установка Ansible
Созданы inventory и inventory.yml
Протестированы ad-hoc команды
Протестирован playbook


ДЗ №7
##### Terraform-2 #####

В рамках обучения было выполнено:
Созданы два файла db.tf и app.tf для создания instance
Создан файл vpc.tf для создания сети и подсети для instance
Созданы модули app, db, vpc для оптимизации кода
Созданы директории окружений prod и stage для возможности повторного использования модулей

#Запуск проекта:
terraform apply -auto-approve

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


