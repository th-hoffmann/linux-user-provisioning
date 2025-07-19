#!/bin/bash

# Carrega configurações
source "$(dirname "$0")/config.txt"

echo "Criando diretórios..."

mkdir -p "$DIRETORIOS"

echo "Criando grupos de usuários..."

for grupo in $GRUPOS; do
    groupadd $grupo 2>/dev/null || echo "Grupo $grupo já existe"
done

echo "Criando usuários..."

# Usuários do Desenvolvimento
for usuario in $USUARIOS_DEV; do
    useradd $usuario -m -s /bin/bash -p $(openssl passwd -5 $SENHA) -G GRP_DEV 2>/dev/null || echo "Usuário $usuario já existe"
done

# Usuários das Operações  
for usuario in $USUARIOS_OPS; do
    useradd $usuario -m -s /bin/bash -p $(openssl passwd -5 $SENHA) -G GRP_OPS 2>/dev/null || echo "Usuário $usuario já existe"
done

# Usuários da Segurança
for usuario in $USUARIOS_SEC; do
    useradd $usuario -m -s /bin/bash -p $(openssl passwd -5 $SENHA) -G GRP_SEC 2>/dev/null || echo "Usuário $usuario já existe"
done

echo "Configurando permissões dos diretórios..."

chown root:GRP_DEV /desenvolvimento
chown root:GRP_OPS /operacoes  
chown root:GRP_SEC /seguranca

chmod 770 /desenvolvimento
chmod 770 /operacoes
chmod 770 /seguranca
chmod 777 /publico

echo "Fim....."

