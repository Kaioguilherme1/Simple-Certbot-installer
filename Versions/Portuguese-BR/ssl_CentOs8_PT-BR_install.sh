#!/bin/bash
#athor: Kaio Guilherme
x="loop"

menu ()
{
while true $x != "loop"
do
clear
echo "\033[0;34m================================================\033[0m"
echo "\033[0;34m|\033[0m            \033[1;36mInstalador SSL: CentOS 8\033[0m          \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m             \033[1;36mEscolha sua verso\033[0m                \033[0;34m|\033[0m"
echo "\033[0;34m================================================\033[0m"
echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[0;31m 0) Saida\033[0m                                    \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 1) apache\033[0m                                   \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 2) Nginx \033[0m                                   \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 3) Ver Certificados     \033[0m                    \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 4) Solicitar novo certificado    \033[0m           \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 5) Revogar certificado    \033[0m                  \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 6) Mudar dominio         \033[0m                   \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 7) Deletar certificado    \033[0m                  \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 8) Testar renovacao automatica \033[0m             \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m \033[1;33m 9) Desinstalar certbot \033[0m                     \033[0;34m|\033[0m"
echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
echo "\033[0;34m================================================\033[0m"
echo "\033[0;34m|\033[0m    \033[1;36mCertificado gerado por Let's Encrypt\033[0m      \033[0;34m|\033[0m"
echo "\033[0;34m================================================\033[0m"
echo ""
echo "\033[0;36mEntre com a opcao desejada: \033[0m"
read x
echo "Opcao escolhida ($x)"
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
                 echo " \033[0;32mAtualizado com sucesso\033[0m"
        fi
        sudo dnf install epel-release
        sudo dnf install mod_ssl openssl
        sudo dnf install certbot python3-certbot-apache
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32mCertbot apache instalado com sucesso\033[0m"
        fi
        clear
        certbot --apache
        echo "Aperte entre para continuar"
        read z
echo "\033[0;34m================================================\033[0m"
;;
        2) # ssl nginx install

        apt-get update
        apt-get install software-properties-common -y
        apt-get update
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32mAtualizado com sucesso\033[0m"
        fi
        sudo dnf install epel-release
        sudo dnf install mod_ssl openssl
        sudo dnf install certbot python3-certbot-nginx
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32mCertbot nginx instalado com sucesso\033[0m"
        fi
        clear
        certbot --nginx
        echo "Aperte enter para continuar"
        read z
echo "\033[0;34m================================================\033[0m"
;;
        3) # view certificates

        certbot certificates
        echo "Aperte enter para continuar"
        read z
echo "\033[0;34m================================================\033[0m"
;;
        4) #Request new certificate
        certbot certonly
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32mNew certificate generated successfully\033[0m"
        fi
        echo "Aperte enter para continuar"
        read z
echo "\033[0;34m================================================\033[0m"
;;
        5) #revoke certificate
        clear
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m            \033[1;36mInstalador SSL: CentOs 8\033[0m          \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m             \033[1;36mRevogar Certificado\033[0m              \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m \033[1;33m Entre com o dominio que voce quer revogar\033[0m   \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m    \033[1;36mCertificado gerado pelo Let's Encrypt\033[0m     \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo ""
        echo "\033[0;36mEntre com o dominio: \033[0m"
        read domain
        certbot revoke --cert-name $domain
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32mCertificado revogado com sucesso\033[0m"
        fi
        echo "Aperte enter para continuar"
        read z
echo "\033[0;34m================================================\033[0m"
;;
        6) #change domain
        clear
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m            \033[1;36mInstalador SSL: CentOs 8 \033[0m         \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m             \033[1;36mTrocar Dominio \033[0m                  \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m \033[1;33m Entre com o dominio que voce quer trocar \033[0m   \033[0;34m|\033[0m"
        echo "\033[0;34m|\033[0m                                              \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo "\033[0;34m|\033[0m    \033[1;36mCertificado gerado por Let's Encrypt \033[0m     \033[0;34m|\033[0m"
        echo "\033[0;34m================================================\033[0m"
        echo ""
        echo "\033[0;36mEntre com o dominio atual: \033[0m"
        read domain1
        echo "\033[0;36mEntre com o novo dominio: \033[0m"
        read domain2
        certbot certonly --cert-name example.com -d example.com
        if [ $? -eq 0 ] # check if the command was executed successfully
        then
                echo " \033[0;32m $domain1 Dominio trocado com sucesso para $domain2\033[0m"
        fi
        echo "Aperte enter para continuar"
        read z
echo "\033[0;34m================================================\033[0m"
;;
        7) #delete certificate

        certbot delete
        echo "Aperte enter para continuar"
        read z
echo "\033[0;34m================================================\033[0m"
;;
        8) #automatic renewal

        certbot renew --dry-run
        echo "Aperte enter para continuar"
        read z
echo "\033[0;34m================================================\033[0m"
;;
        9) #remove certbot

        echo "removendo"
        apt remove certbot python3-certbot-apache -y
        apt-get remove certbot -y
        clear
        echo -e " \033[0;32mCertbot Removido com Sucesso ! \033[0m"
        echo "Aperte enter para continuar"
        read z
echo "\033[0;34m================================================\033[0m"
;;
*)
        echo "Opcao Invalida !"
esac
done
}
menu 
