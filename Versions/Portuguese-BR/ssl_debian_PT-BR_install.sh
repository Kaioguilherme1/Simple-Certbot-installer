#!/bin/bash
#athor: Kaio Guilherme
x="loop"

menu ()
{
while true $x != "loop"
do
clear
echo "\033[0;34m================================================\033[0m"
echo "\033[0;34m|\033[0m            \033[1;36m Instalador SSL: Debian \033[0m          \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m             \033[1;36m Escolha sua versao \033[0m             \033[0;34m|\033[0m"
echo "\033[0;34m================================================\033[0m"
echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[0;31m 0) Sair \033[0m                                    \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 1) apache \033[0m                                  \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 2) Nginx \033[0m                                   \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 3) Ver Certificados     \033[0m                    \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 4) Solicitar Novo Certificado    \033[0m           \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 5) Revogar Certificado    \033[0m                  \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 6) Trocar Dominio         \033[0m                  \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 7) Deletar Certificado    \033[0m                  \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 8) Testar renovamento automatico \033[0m           \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 9) Remover Certbot \033[0m                         \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
echo "\033[0;34m================================================\033[0m"
echo "\033[0;34m|\033[0m    \033[1;36m Certificado gerado por Let's Encrypt \033[0m    \033[0;34m|\033[0m"
echo "\033[0;34m================================================\033[0m"
echo ""
echo "\033[0;36m Entre com a opcao desejada: \033[0m"
read x
echo " Opcao Informada ($x)"
echo "\033[1;36m================================================\033[0m"

case "$x" in

        0)
        echo " \033[0;31m Saindo  \033[0m"
        clear;
        exit;
        

echo "\033[0;34m================================================\033[0m"
;;
        1) #ssl apache install

        apt-get update
        apt-get install software-properties-common -y
        apt-get update
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                 echo " \033[0;32m Atualizacao feita com sucesso \033[0m"
        fi
        apt-get install certbot -y
        apt install certbot python3-certbot-apache -y
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32m Certbot apache Instalado com sucesso \033[0m"
        fi
        clear
        certbot --apache
        echo " Aperte enter para continuar "
        read z
echo "\033[0;34m================================================\033[0m"
;;
        2) # ssl nginx install

        apt-get update
        apt-get install software-properties-common -y
        apt-get update
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32m Atualizacao feita com sucesso \033[0m"
        fi
        apt-get install certbot -y
        apt install certbot python3-certbot-nginx -y
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32m Certbot nginx Instalado com sucesso \033[0m"
        fi
        clear
        certbot --nginx
        echo " Aperte enter para continuar "
        read z
echo "\033[0;34m================================================\033[0m"
;;
        3) # view certificates

        certbot certificates
        echo " Aperte enter para continuar "
        read z
echo "\033[0;34m================================================\033[0m"
;;
        4) #Request new certificate
        certbot certonly
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32m Novo certificado gerado com sucesso \033[0m"
        fi
        echo " Aperte enter para continuar "
        read z
echo "\033[0;34m================================================\033[0m"
;;
        5) #revoke certificate
        clear
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m            \033[1;36m Instalador SSL: Debian \033[0m          \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m             \033[1;36m Revogar Certificado \033[0m            \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m \033[1;33m Entre com o dominio que voce quer revogar \033[0m  \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m    \033[1;36m Certificado gerado por Let's Encrypt \033[0m    \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo ""
        echo "\033[0;36m Entre com o dominio: \033[0m"
        read domain
        certbot revoke --cert-name $domain
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32m Certbot Revogado com Sucesso \033[0m"
        fi
        echo " Aperte enter para continuar "
        read z
echo "\033[0;34m================================================\033[0m"
;;
        6) #change domain
        clear
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m            \033[1;36m Instalador SSL: Debian \033[0m          \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m             \033[1;36m Trocar Dominio \033[0m                 \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m \033[1;33m Entre com o dominio que voce quer trocar   \033[0m \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m    \033[1;36m Certificado gerado por Let's Encrypt \033[0m    \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo ""
        echo "\033[0;36m Entre com o dominio atual: \033[0m"
        read domain1
        echo "\033[0;36m Entre com o novo dominio: \033[0m"
        read domain2
        certbot certonly --cert-name example.com -d example.com
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32m $domain1 Dominio trocado com sucesso para $domain2\033[0m"
        fi
        echo " Aperte enter para continuar "
        read z
echo "\033[0;34m================================================\033[0m"
;;
        7) #delete certificate

        certbot delete
        echo " Aperte enter para continuar "
        read z
echo "\033[0;34m================================================\033[0m"
;;
        8) #automatic renewal

        certbot renew --dry-run
        echo " Aperte enter para continuar "
        read z
echo "\033[0;34m================================================\033[0m"
;;
        9) #remove certbot

        echo " Removendo . . . "
        apt remove certbot python3-certbot-apache -y
        apt-get remove certbot -y
        clear
        echo -e " \033[0;32m Certbot Removido com Sucesso \033[0m"
        echo " Aperte enter para continuar "
        read z
echo "\033[0;34m================================================\033[0m"
;;
*)
        echo " Opcao Invalida !! "
esac
done
}
menu 
