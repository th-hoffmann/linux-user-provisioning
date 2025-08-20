#!/usr/bin/env bash

# ╔═════════════════════════════════════════════════════════════════════════════╗
# ║  ⚡ linux-user-provisioning.sh
# ╚═════════════════════════════════════════════════════════════════════════════╝
# 
# ╔═════════════════════════════════════════════════════════════════════════════╗
# ║ 📋 INFORMAÇÕES DO SCRIPT
# ╚═════════════════════════════════════════════════════════════════════════════╝
# 
#   📄 Descrição.....: Esse script provisiona automaticamente toda a estrutura 
#    organizacional de uma empresa de tecnologia, incluindo usuários, grupos e
#    suas devidas permissões e diretórios departamentais, garantindo que qualquer
#    nova máquina virtual esteja pronta para uso após a sua execução.
#
#   
#   👨‍💻 Desenvolvedor.: Thiago Hoffmann
#   📮 Contato.......: thiago@hoffmann.tec.br
#   🔗 GitHub........: https://github.com/th-hoffmann
#   🌐 LinkedIn......: https://linkedin.com/in/th-hoffmann87
#   
#   📅 Data..........: 14/07/2025
#   🏷️  Versão.......: 1.0.0
# 
# ╔═════════════════════════════════════════════════════════════════════════════╗
# ║ 🚀 MODO DE USO
# ╚═════════════════════════════════════════════════════════════════════════════╝
# 
#   Executar:    ./linux-user-provisioning.sh [opcoes]
# 
# ═══════════════════════════════════════════════════════════════════════════════

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

