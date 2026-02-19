#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando aos grupos..."

useradd carlos -c "Carlos Armando" -s /bin/bash -m -p ${openssl passwd -crypt Senha123} -G GRP_ADM
useradd maria -c "Maria das Graças" -s /bin/bash -m -p ${openssl passwd -crypt Senha123} -G GRP_ADM
useradd joao -c "João Fonseca" -s /bin/bash -m -p ${openssl passwd -crypt Senha123} -G GRP_ADM

useradd debora -c "Debora Almeida" -s /bin/bash -m -p ${openssl passwd -crypt Senha123} -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m -p ${openssl passwd -crypt Senha123} -G GRP_VEN
useradd roberto -c "Roberto de Carvalho" -s /bin/bash -m -p ${openssl passwd -crypt Senha123} -G GRP_VEN

useradd josefina -c "Josefina Albuquerque" -s /bin/bash -m -p ${openssl passwd -crypt Senha123} -G GRP_SEC
useradd amanda -c "Amanda Borges" -s /bin/bash -m -p ${openssl passwd -crypt Senha123} -G GRP_SEC
useradd rogerio -c "Rogério Caiado" -s /bin/bash -m -p ${openssl passwd -crypt Senha123} -G GRP_SEC

echo "Especificando permissões aos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."