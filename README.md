# 📌 CRUD_APP

## 📖 Description
Code source du TP **déploiement CI/CD** module **Devops Master II**
Projet développé avec le framework **Laravel**.
Code cloné depuis [CRUD-Laravel-12](https://github.com/SantriKoding-com/CRUD-Laravel-12.git)

---

## ⚙️ Prérequis

Avant de commencer, assure-toi d’avoir installé sur ta machine :

- **PHP** (>= 8.2 recommandé)
- **Composer**
- **Laravel** 12.0
- **MySQL**
- **Git**

---

## 🚀 Installation

Suivre les étapes ci-dessous pour installer et lancer le projet localement.

### 1️⃣ Cloner le projet
```bash
git clone https://github.com/Amani-Arnaud/crud_app.git
```

### 2️⃣ Accéder au répertoire du projet
```bash
cd crud_app
```

### 3️⃣ Copier et renommer le fichier d’environnement
sur Mac/Linux
```bash
cp .env.example .env
```
sur Windows
```bash
copy .env.example .env
```

### 4️⃣ Installer les dépendances avec Composer
```bash
composer install
```

### 5️⃣ Générer la clé de l’application
 ```bash
php artisan key:generate
```

### 6️⃣ Migrer la base de données
```bash
php artisan migrate
```

### 7️⃣ Lancer le serveur
```bash
php artisan serve
```

### Acceder à l'application
```bash
http://127.0.0.1:8000/products
```

### Fin
Thank you 🙏🏾