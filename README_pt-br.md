# Projeto de IaC: Script de Provisionamento de Usuários em Linux

![Status](https://img.shields.io/badge/status-concluído-green)
![Linguagem](https://img.shields.io/badge/linguagem-Bash_Script-blue)

[Read this file in English](README.en.md)

## 📖 Descrição

Este repositório, **`linux-iac-user-setup`**, contém o script **`iac-provisioning.sh`**, desenvolvido como parte da **[Formação Linux Fundamentals da DIO](https://web.dio.me/track/formacao-linux-fundamentals)**. O objetivo do projeto é automatizar a criação de toda a infraestrutura de usuários, grupos e diretórios em um servidor Linux, aplicando os conceitos de Infraestrutura como Código (IaC).

O script garante que, ao executar em uma nova máquina virtual, toda a estrutura de permissões seja configurada de forma padronizada e automática, pronta para uso.

---

## 🚀 Funcionalidades

O script **`iac-provisioning.sh`** realiza as seguintes ações:

- ✔️ **Criação de Grupos:** Cria os grupos de usuários `GRP_ADM`, `GRP_VEN` e `GRP_SEC`.
- ✔️ **Criação de Diretórios:** Cria os diretórios `/publico`, `/adm`, `/ven` e `/sec`.
- ✔️ **Atribuição de Permissões:**
    - Define o usuário `root` como dono de todos os diretórios.
    - Atribui os respectivos grupos como donos dos diretórios específicos.
    - Aplica permissões totais para o dono e para os grupos correspondentes.
    - Impede que outros usuários tenham permissões nos diretórios restritos.
    - Permite acesso total de todos os usuários ao diretório `/publico`.
- ✔️ **Criação de Usuários:** Cria usuários pré-definidos e os adiciona aos seus respectivos grupos.

---

## 🛠️ Como Utilizar

### Pré-requisitos

- Um sistema operacional baseado em Linux (Debian, Ubuntu, etc.).
- Acesso como superusuário (`root`) para executar o script.

### Execução

1.  Faça o clone deste repositório:
    ```bash
    git clone [https://github.com/SEU-USUARIO/linux-iac-user-setup.git](https://github.com/SEU-USUARIO/linux-iac-user-setup.git)
    ```

2.  Navegue até o diretório do projeto:
    ```bash
    cd linux-iac-user-setup
    ```

3.  Conceda permissão de execução ao script:
    ```bash
    chmod +x iac-provisioning.sh
    ```

4.  Execute o script como root:
    ```bash
    sudo ./iac-provisioning.sh
    ```

Após a execução, a estrutura de usuários, grupos e diretórios estará pronta.

---
