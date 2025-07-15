# IaC Project: Linux User Provisioning Script

![Status](https://img.shields.io/badge/status-completed-green)
![Language](https://img.shields.io/badge/language-Bash_Script-blue)

[Leia este arquivo em Português](README_pt-br.md)

## 📖 Description

This repository, **`linux-iac-user-setup`**, contains the **`iac-provisioning.sh`** script, developed as part of **DIO's Linux Fundamentals Training**. The project's goal is to automate the setup of the entire user, group, and directory infrastructure on a Linux server, applying Infrastructure as Code (IaC) concepts.

The script ensures that when run on a new virtual machine, the entire permission structure is configured in a standardized and automated way, ready for use.

---

## 🚀 Features

The **`iac-provisioning.sh`** script performs the following actions:

- ✔️ **Group Creation:** Creates the `GRP_ADM`, `GRP_VEN`, and `GRP_SEC` user groups.
- ✔️ **Directory Creation:** Creates the `/public`, `/adm`, `/ven`, and `/sec` directories.
- ✔️ **Permission Assignment:**
    - Sets the `root` user as the owner of all directories.
    - Assigns the respective groups as owners of their specific directories.
    - Applies full permissions for the owner and the corresponding groups.
    - Prevents other users from having permissions in the restricted directories.
    - Allows full access for all users to the `/public` directory.
- ✔️ **User Creation:** Creates predefined users and adds them to their respective groups.

---

## 🛠️ How to Use

### Prerequisites

- A Linux-based operating system (Debian, Ubuntu, etc.).
- Superuser (`root`) access to run the script.

### Execution

1.  Clone this repository:
    ```bash
    git clone [https://github.com/th-hoffmann/linux-iac-user-setup.git](https://github.com/th-hoffmann/linux-iac-user-setup.git)
    ```

2.  Navigate to the project directory:
    ```bash
    cd linux-iac-user-setup
    ```

3.  Grant execution permission to the script:
    ```bash
    chmod +x iac-provisioning.sh
    ```

4.  Run the script as root:
    ```bash
    sudo ./iac-provisioning.sh
    ```

After execution, the user, group, and directory structure will be ready.

