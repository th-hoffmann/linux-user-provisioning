# 🚀 Provisionamento Automatizado de Usuários Linux

<div align="center">

![Status](https://img.shields.io/badge/status-concluído-brightgreen?style=for-the-badge)
![Shell Script](https://img.shields.io/badge/Shell_Script-bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![IaC](https://img.shields.io/badge/IaC-Infrastructure_as_Code-blue?style=for-the-badge)

**[🇺🇸 Read in English](README.md)** • **🇧🇷 Português**

*Automatize o provisionamento de usuários, grupos e diretórios em sistemas Linux com princípios de Infrastructure as Code*

</div>

---

## 📋 Sobre o Projeto

Este projeto foi desenvolvido como parte do **primeiro desafio** da [**Formação Linux Fundamentals da DIO**](https://web.dio.me/track/formacao-linux-fundamentals), aplicando conceitos de **Infrastructure as Code (IaC)** para automatizar completamente a criação de infraestrutura de usuários em ambientes Linux.

### 🎯 Objetivo

Criar um script que provisione automaticamente toda a estrutura organizacional de uma empresa de tecnologia, incluindo usuários, grupos de permissão e diretórios departamentais, garantindo que qualquer nova máquina virtual esteja pronta para uso após a execução.

---

## 🏢 Estrutura Organizacional

O script simula a estrutura real de uma **empresa de tecnologia**, criando departamentos e usuários realistas:

<div align="center">

| 🏗️ **Departamento** | 👥 **Grupo** | 📁 **Diretório** | 👤 **Usuários** |
|---------------------|-------------|-----------------|-----------------|
| **Desenvolvimento** | `GRP_DEV` | `/desenvolvimento` | ana.silva, carlos.pereira, maria.santos |
| **Operações** | `GRP_OPS` | `/operacoes` | joao.oliveira, roberto.costa, paula.ferreira |
| **Segurança** | `GRP_SEC` | `/seguranca` | marcos.almeida, lucia.rodrigues, pedro.martins |
| **Público** | _todos_ | `/publico` | _acesso compartilhado_ |

</div>

---

## ⚡ Funcionalidades

### 🔧 **Provisionamento Automatizado**
- ✅ **Criação de Grupos** → Grupos departamentais com nomenclatura profissional
- ✅ **Criação de Diretórios** → Estrutura organizacional de pastas
- ✅ **Criação de Usuários** → Contas com nomes realistas (nome.sobrenome)
- ✅ **Configuração de Permissões** → Segurança baseada em grupos

### 🛡️ **Segurança e Permissões**
- 🔐 **Senhas Criptografadas** → Hash SHA-512 para todas as contas
- 🚫 **Isolamento Departamental** → Acesso restrito por grupo (770)
- 🌐 **Área Compartilhada** → Diretório público com acesso total (777)
- 🔄 **Idempotência** → Pode ser executado múltiplas vezes sem problemas

### ⚙️ **Configuração Externa**
- 📄 **Arquivo de Configuração** → `config.txt` para personalização fácil
- 🔧 **Reutilização** → Adapte para diferentes organizações sem alterar código
- 📝 **Manutenção Simples** → Modificações apenas no arquivo de configuração

---

## � Como Usar

### 📋 **Pré-requisitos**

- **Sistema Operacional:** Linux (Ubuntu, Debian, CentOS, etc.)
- **Privilégios:** Acesso root/sudo
- **Dependências:** `bash`, `openssl` (geralmente já instalados)

### 🔧 **Instalação e Execução**

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/th-hoffmann/linux-user-provisioning.git
   cd linux-user-provisioning
   ```

2. **Torne o script executável:**
   ```bash
   chmod +x linux-user-provisioning.sh
   ```

3. **Execute o script:**
   ```bash
   sudo ./linux-user-provisioning.sh
   ```

4. **Verifique os resultados:**
   ```bash
   # Listar grupos criados
   getent group | grep GRP_
   
   # Listar usuários criados
   getent passwd | grep -E "(ana|carlos|maria|joao|roberto|paula|marcos|lucia|pedro)"
   
   # Verificar diretórios e permissões
   ls -la / | grep -E "(publico|desenvolvimento|operacoes|seguranca)"
   ```

---

## 📁 Estrutura do Projeto

```
linux-user-provisioning/
├── 🚀 linux-user-provisioning.sh    # Script principal
├── ⚙️  config.txt                   # Arquivo de configuração
├── 📖 README.md                     # Documentação (English)
└── 📖 README_pt-br.md              # Documentação (Português)
```

---

## ⚙️ Personalização

### 📝 **Modificando Configurações**

Edite o arquivo `config.txt` para personalizar:

```bash
# Exemplo de personalização
DIRETORIOS="/publico /vendas /marketing /ti"
GRUPOS="GRP_VENDAS GRP_MKT GRP_TI"
USUARIOS_VENDAS="joana.silva pedro.santos ana.costa"
SENHA="MinhaEmpresa2025!"
```

### 🔄 **Executar Novamente**

O script é **idempotente** - pode ser executado múltiplas vezes:
- ✅ Elementos existentes são ignorados
- ✅ Apenas novos elementos são criados
- ✅ Sem conflitos ou erros

---

## 🛡️ Segurança

### 🔐 **Práticas Implementadas**

- **Senhas Fortes:** Política de senhas robustas com caracteres especiais
- **Criptografia:** Hash SHA-512 para armazenamento seguro
- **Princípio do Menor Privilégio:** Acesso restrito por departamento
- **Separação de Responsabilidades:** Grupos isolados com permissões específicas

### ⚠️ **Considerações de Segurança**

> **🚨 Aviso:** Este script é para **ambientes de desenvolvimento/teste**. Para produção, considere:
> - Integração com sistemas de autenticação corporativos (LDAP/AD)
> - Políticas de senha mais rigorosas
> - Auditoria e logging detalhados
> - Backup automatizado antes da execução

---

## 📚 Conceitos Aplicados

### 🏗️ **Infrastructure as Code (IaC)**
- **Automação** → Eliminação de processos manuais
- **Consistência** → Mesma configuração em qualquer ambiente
- **Versionamento** → Controle de mudanças via Git
- **Reprodutibilidade** → Resultados idênticos em execuções diferentes

### 🐧 **Administração Linux**
- **Gestão de Usuários** → `useradd`, `groupadd`
- **Controle de Permissões** → `chmod`, `chown`
- **Shell Scripting** → Automação com Bash
- **Gerenciamento de Sistema** → Configuração programática

---

## 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para:

- 🐛 Reportar bugs
- 💡 Sugerir melhorias
- 🔧 Enviar pull requests
- 📖 Melhorar a documentação

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## 👨‍💻 Autor

Desenvolvido por **[th-hoffmann](https://github.com/th-hoffmann)** como parte da Formação Linux Fundamentals da DIO.

---

<div align="center">

### ⭐ Se este projeto foi útil, considere dar uma estrela!

**[🔙 Voltar ao topo](#-provisionamento-automatizado-de-usuários-linux)**

</div>
