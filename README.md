# EduardDzhagaev_infra
EduardDzhagaev Infra repository

bastion_IP          = 51.250.3.183 (public ip-address)
someinternalhost_IP = 10.128.0.3 (internal ip-address)  



#### Connection method with one command ####

ssh -J appuser@51.250.3.183 appuser@10.128.0.3

[root@tao EduardDzhagaev_infra]# ssh -J appuser@51.250.3.183 appuser@10.128.0.3
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.4.0-156-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage
Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings

Last login: Thu Aug 24 16:00:11 2023 from 10.128.0.20
appuser@someinternalhost:~$


