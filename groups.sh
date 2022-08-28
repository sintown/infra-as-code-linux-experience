#!/bin/bash

cd /
mkdir Departamentos
cd Departamentos
pwd

# criando os diretórios dentro da pasta Departamentos

echo "criando os departamentos dentro da pasta Departamentos.."
mkdir publico adm ven sec

# criando os grupos

echo "criando os grupos.."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários e adicionando a grupos.."
# adm
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_ADM
# ven
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_VEN
# sec
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt 123) -G GRP_SEC

echo "adicionando grupos de permissões a pastas (departamentos).."

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "definindo permissões de pasta publica e departamental.."

# permissão total ao root e aos usuários do grupo
chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec
