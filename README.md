<h1 align="center"> Simple-Certbot-installer </h1>
<p align="center">
  <img src="https://user-images.githubusercontent.com/65198889/191982434-39e28496-4cfb-4452-a2f2-8db644d1b3a3.png" />
</p>



<p align="center">
  <img src="http://img.shields.io/static/v1?label=STATUS&message=EM%20DEVELOPMENT&color=GREEN&style=flat-square"/>
  <img src="https://img.shields.io/github/commit-activity/m/kaioguilherme1/Simple-Certbot-installer?style=flat-square"/>
  <img src="https://img.shields.io/github/last-commit/kaioguilherme1/Simple-Certbot-installer?style=flat-square"/>
  <img src="https://img.shields.io/github/license/kaioGuilherme1/Simple-Certbot-installer?style=flat-square"/>
</p>

---

<h3 align="center"> supported systems </h3>

<p align="center"> 
  <a href="https://www.docker.com/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg"></a>
  <a href="https://www.debian.org/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/debian/debian-original.svg"></a>
  <a href="https://ubuntu.com/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ubuntu/ubuntu-plain-wordmark.svg"></a>
  <a href="https://wordpress.com/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/wordpress/wordpress-original.svg"></a> 
  <a href="https://www.apache.org/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apache/apache-original-wordmark.svg"></a>
  <a href="https://www.nginx.com/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nginx/nginx-original.svg"></a>

</p>
  
---

  This small script has the function of facilitating the installation and issuance of ssl certificates, I aim to make it easier for all platforms, but at the moment it supports docker containers and Debian-based systems.
  
  Read in [Portuguese_br](https://github.com/Kaioguilherme1/Simple-Certbot-installer/blob/main/Translations/README.PT-BR.md)

## Index

* [Title](#script-name)
* [Index](#Index)
* [📄Dependencies](#Dependencies)
* [🔧Installation](#Installation)
* [⚙️Usage](#use)
* [📌Version](#Version)
* [✒️Authors](#Authors)
* [📑License](#License)

## 📄 Dependencies

* Wget
  
## 🔧Installation

The following are the ways of executing the script for each distribution:

### docker container

```
sudo docker exec -it <container name or id> bash 
curl -LJO https://raw.githubusercontent.com/Kaioguilherme1/Simple-Certbot-installer/main/Versions/English/ssl_debian_install.sh ; sh ssl_debian_install.sh
```
### Debian, Ubuntu, Mint, etc...

```
sudo curl -LJO https://raw.githubusercontent.com/Kaioguilherme1/Simple-Certbot-installer/main/Versions/English/ssl_debian_install.sh ;sudo sh ssl_debian_install.sh
```

### CentOs 8

```
sudo curl -LJO https://raw.githubusercontent.com/Kaioguilherme1/Simple-Certbot-installer/main/Versions/English/ssl_CentOs8_install.sh ;sudo sh ssl_CentOs8_install.sh
```

### 📁 Project access


[download script](https://github.com/Kaioguilherme1/Simple-Certbot-installer/archive/refs/heads/main.zip)

#### Download via terminal

```
git clone https://github.com/Kaioguilherme1/Simple-Certbot-installer.git
```

## ⚙️ Usage


## 📦 Development

Currently development is in the initial phase supporting only debian based systems and docker containers.
## 📌 Version

V 1.02

## ✒️ Authors

Mention all those who helped lift the project from its inception

* **developer** - *Initial Work* - [Kaio Guilherme](https://github.com/Kaioguilherme1)


*

## 📑 License

This project is under license (MIT) - see the file [LICENSE.md](https://github.com/Kaioguilherme1/Simple-Certbot-installer/blob/main/LICENSE) for details.
