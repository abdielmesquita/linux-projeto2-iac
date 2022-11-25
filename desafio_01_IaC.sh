echo "Criando diretórios no diretório raiz /..."

cd /

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo "Criando usuários..."

useradd carlos -c "Carlos do Adm" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd carlos -e

useradd maria -c "Maria do Adm" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd maria -e

useradd joao -c "João do Adm" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd joao -e

useradd debora -c "Débora das Vendas" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd debora -e

useradd sebastiana -c "Sebastiana das Vendas" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd sebastiana -e

useradd roberto -c "Roberto das Vendas" -m -s /bin/bash -p $(openssl passwd Senhas123)
passwd roberto -e

useradd josefina -c "Josefina da Secretaria" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd josefina -e

useradd amanda -c "Amanda da Secretaria" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd amanda -e

useradd rogerio -c "Rogério da Secretaria" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd rogerio -e

echo "Usuários criados com sucesso!"

echo "Adicionando usuários aos respectivos grupos..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -g GRP_SEC rogerio

echo "Usuários adicionados aos grupos com sucesso!"

echo "Setando usuários e grupos proprietários dos respectivos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Proprietários setados com sucesso!"

echo "Alterando permissões de acesso dos usuários e grupos aos diretórios criados..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões de acesso alteradas com sucesso!"
