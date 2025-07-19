# 🚀 Linux User Provisioning Automation

<div align="center">

![Status](https://img.shields.io/badge/status-completed-brightgreen?style=for-the-badge)
![Shell Script](https://img.shields.io/badge/Shell_Script-bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![IaC](https://img.shields.io/badge/IaC-Infrastructure_as_Code-blue?style=for-the-badge)

**🇺🇸 English** • **[🇧🇷 Leia em Português](README_pt-br.md)**

*Automate user, group, and directory provisioning on Linux systems with Infrastructure as Code principles*

</div>

---

## 📋 About the Project

This project was developed as part of the **first challenge** of [**DIO's Linux Fundamentals Training**](https://web.dio.me/track/formacao-linux-fundamentals), applying **Infrastructure as Code (IaC)** concepts to completely automate user infrastructure creation in Linux environments.

### 🎯 Objective

Create a script that automatically provisions the entire organizational structure of a technology company, including users, permission groups, and departmental directories, ensuring any new virtual machine is ready for use after execution.

---

## 🏢 Organizational Structure

The script simulates the real structure of a **technology company**, creating realistic departments and users:

<div align="center">

| 🏗️ **Department** | 👥 **Group** | 📁 **Directory** | 👤 **Users** |
|-------------------|-------------|------------------|-------------|
| **Development** | `GRP_DEV` | `/desenvolvimento` | ana.silva, carlos.pereira, maria.santos |
| **Operations** | `GRP_OPS` | `/operacoes` | joao.oliveira, roberto.costa, paula.ferreira |
| **Security** | `GRP_SEC` | `/seguranca` | marcos.almeida, lucia.rodrigues, pedro.martins |
| **Public** | _everyone_ | `/publico` | _shared access_ |

</div>

---

## ⚡ Features

### 🔧 **Automated Provisioning**
- ✅ **Group Creation** → Professional departmental groups
- ✅ **Directory Creation** → Organizational folder structure
- ✅ **User Creation** → Realistic accounts (firstname.lastname)
- ✅ **Permission Configuration** → Group-based security

### 🛡️ **Security & Permissions**
- 🔐 **Encrypted Passwords** → SHA-512 hash for all accounts
- 🚫 **Departmental Isolation** → Group-restricted access (770)
- 🌐 **Shared Area** → Public directory with full access (777)
- 🔄 **Idempotency** → Can be executed multiple times safely

### ⚙️ **External Configuration**
- 📄 **Configuration File** → `config.txt` for easy customization
- 🔧 **Reusability** → Adapt for different organizations without code changes
- 📝 **Simple Maintenance** → Modifications only in configuration file

---

## 🚀 How to Use

### 📋 **Prerequisites**

- **Operating System:** Linux (Ubuntu, Debian, CentOS, etc.)
- **Privileges:** Root/sudo access
- **Dependencies:** `bash`, `openssl` (usually pre-installed)

### 🔧 **Installation & Execution**

1. **Clone the repository:**
   ```bash
   git clone https://github.com/th-hoffmann/linux-user-provisioning.git
   cd linux-user-provisioning
   ```

2. **Make the script executable:**
   ```bash
   chmod +x linux-user-provisioning.sh
   ```

3. **Run the script:**
   ```bash
   sudo ./linux-user-provisioning.sh
   ```

4. **Verify the results:**
   ```bash
   # List created groups
   getent group | grep GRP_
   
   # List created users
   getent passwd | grep -E "(ana|carlos|maria|joao|roberto|paula|marcos|lucia|pedro)"
   
   # Check directories and permissions
   ls -la / | grep -E "(publico|desenvolvimento|operacoes|seguranca)"
   ```

---

## 📁 Project Structure

```
linux-user-provisioning/
├── 🚀 linux-user-provisioning.sh    # Main script
├── ⚙️  config.txt                   # Configuration file
├── 📖 README.md                     # Documentation (English)
└── 📖 README_pt-br.md              # Documentation (Portuguese)
```

---

## ⚙️ Customization

### 📝 **Modifying Configurations**

Edit the `config.txt` file to customize:

```bash
# Customization example
DIRETORIOS="/publico /sales /marketing /it"
GRUPOS="GRP_SALES GRP_MKT GRP_IT"
USUARIOS_SALES="jane.doe john.smith anna.johnson"
SENHA="MyCompany2025!"
```

### 🔄 **Running Again**

The script is **idempotent** - can be executed multiple times:
- ✅ Existing elements are ignored
- ✅ Only new elements are created
- ✅ No conflicts or errors

---

## 🛡️ Security

### 🔐 **Implemented Practices**

- **Strong Passwords:** Robust password policy with special characters
- **Encryption:** SHA-512 hash for secure storage
- **Principle of Least Privilege:** Department-restricted access
- **Separation of Duties:** Isolated groups with specific permissions

### ⚠️ **Security Considerations**

> **🚨 Warning:** This script is for **development/test environments**. For production, consider:
> - Integration with corporate authentication systems (LDAP/AD)
> - More stringent password policies
> - Detailed auditing and logging
> - Automated backup before execution

---

## � Applied Concepts

### 🏗️ **Infrastructure as Code (IaC)**
- **Automation** → Elimination of manual processes
- **Consistency** → Same configuration in any environment
- **Version Control** → Change management via Git
- **Reproducibility** → Identical results across executions

### 🐧 **Linux Administration**
- **User Management** → `useradd`, `groupadd`
- **Permission Control** → `chmod`, `chown`
- **Shell Scripting** → Bash automation
- **System Management** → Programmatic configuration

---

## 🤝 Contributing

Contributions are welcome! Feel free to:

- 🐛 Report bugs
- 💡 Suggest improvements
- 🔧 Submit pull requests
- 📖 Improve documentation

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

Developed by **[th-hoffmann](https://github.com/th-hoffmann)** as part of DIO's Linux Fundamentals Training.

---

<div align="center">

### ⭐ If this project was helpful, consider giving it a star!

**[🔙 Back to top](#-linux-user-provisioning-automation)**

</div>

3.  Grant execution permission to the script:
    ```bash
    chmod +x linux-user-provisioning.sh
    ```

4.  Run the script as root:
    ```bash
    sudo ./linux-user-provisioning.sh
    ```

After execution, the user, group, and directory structure will be ready.

---
