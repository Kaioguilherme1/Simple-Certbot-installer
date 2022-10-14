<h1 align="center"> Instalador-Certbot-Simples </h1>
<p align="center">
  <img src="https://user-images.githubusercontent.com/65198889/191982434-39e28496-4cfb-4452-a2f2-8db644d1b3a3.png" />
</p>



<p align="center">
  <img src="http://img.shields.io/static/v1?label=STATUS&message=EM%20DEVELOPMENT&color=GREEN&style=flat-square"/>
  <img src="https://img.shields.io/github/commit-activity/m/kaioguilherme1/Simple-Certbot-installer?style=flat-square"/>
  <img src="https://img.shields.io/github/last-commit/kaioguilherme1/Simple-Certbot-installer?style=flat-square"/>
  <img src="https://img.shields.io/github/Licenca/kaioGuilherme1/Simple-Certbot-installer?style=flat-square"/>
</p>

---

<h3 align="center"> Sistemas Suportados </h3>

<p align="center"> 
  <a href="https://www.docker.com/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg"></a>
  <a href="https://www.debian.org/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/debian/debian-original.svg"></a>
  <a href="https://ubuntu.com/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ubuntu/ubuntu-plain-wordmark.svg"></a>
  <a href="https://wordpress.com/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/wordpress/wordpress-original.svg"></a> 
  <a href="https://www.apache.org/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apache/apache-original-wordmark.svg"></a>
  <a href="https://www.nginx.com/" target= "_blank"><img align="center" alt="supported-systems-certbot-install" height="50" width="60" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nginx/nginx-original.svg"></a>

</p>
  
---

  Esse pequeno script tem a função de facilitar a instalação e emissão de certificados SSL, meu foco é facilitar para todas as 
  plataformas, mas até o momento suporta containers Docker e sistemas baseados em Debian.

  Leia em [Inglês]()

## Indice

* [Título](#script-name)
* [Índice](#Indice)
* [📄Dependências](#Dependencias)
* [🔧Instalação](#Instalacao)
* [⚙️Uso](#Uso)
* [📌Versões](#Versoes)
* [✒️Autores](#Autores)
* [📑Licença](#Licenca)

## 📄 Dependências

* Wget
  
## 🔧Instalação

A seguir serao mostradas as formas de executar o script para cada distribuiçoes

### Container Docker

```
sudo docker exec -it <container name or id> bash 
curl -LJO https://raw.githubusercontent.com/Kaioguilherme1/Simple-Certbot-installer/main/Versions/ssl_debian_install.sh ; sh ssl_debian_install.sh
```
### Debian, Ubuntu, Mint, etc...

```
sudo curl -LJO https://raw.githubusercontent.com/Kaioguilherme1/Simple-Certbot-installer/main/Versions/ssl_debian_install.sh ;sudo sh ssl_debian_install.sh
```

### CentOs 8

```
sudo curl -LJO https://raw.githubusercontent.com/Kaioguilherme1/Simple-Certbot-installer/main/Versions/ssl_CentOs8_install.sh ;sudo sh ssl_debian_install.sh
```

### 📁 Acesso ao Projeto 


[download script](https://github.com/Kaioguilherme1/Simple-Certbot-installer/archive/refs/heads/main.zip)

#### Baixar pelo terminal

```
git clone https://github.com/Kaioguilherme1/Simple-Certbot-installer.git
```

## ⚙️ Uso


## 📦 Desenvolvimento 

Atualmente em desenvolvimento em estado inicial suportando apenas sistemas baseados em Debian e containers Docker.

## 📌 Versao

V 1.02

## ✒️ Autores

Mencoes dadas a todos que participaram e ajudaram no projeto desde o início

* **developer** - *Initial Work* - [Kaio Guilherme](https://github.com/Kaioguilherme1)
* **Translator_PT-BR** - *Colaborator* - [Angelo Ferro](https://github.com/Angelox99)

*

## 📑 Licença

Esse projeto esta sob a licença(MIT) - veja o arquivo [Licenca.md](https://github.com/Kaioguilherme1/Simple-Certbot-installer/blob/main/Licenca) para mais detalhes.
