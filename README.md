# 🔐 autoEncrypt.sh

✨ *A simple and secure Bash tool to encrypt and decrypt files using AES-256 with OpenSSL* ✨

---

## 📝 Description

**autoEncrypt.sh** is a Bash script that allows you to easily **encrypt and decrypt files** using the **AES-256-CBC** algorithm provided by OpenSSL.

It is designed to be:

* 🔒 Secure
* 🧠 Easy to understand
* 🧪 Perfect for learning cryptography basics
* ⚙️ Useful for automation and CTF-style challenges

The script prompts the user for a password interactively, ensuring sensitive data is never stored in plain text.

---

## ⚙️ Requirements

Before using this script, make sure you have:

* 🐧 Linux / macOS / WSL
* 🔐 OpenSSL installed

### Install OpenSSL

**Debian / Ubuntu**

```bash
sudo apt install openssl
```

**Arch Linux**

```bash
sudo pacman -S openssl
```

**macOS (Homebrew)**

```bash
brew install openssl
```

---

## 🚀 Usage

```bash
./autoEncrypt.sh [option] <input_file> <output_file>
```

### 🔹 Options

| Option | Description       |
| ------ | ----------------- |
| `-e`   | 🔐 Encrypt a file |
| `-d`   | 🔓 Decrypt a file |
| `-h`   | ❓ Show help panel |

---

## 📌 Examples

### 🔐 Encrypt a file

```bash
./autoEncrypt.sh -e secret.txt secret.txt.aes
```

### 🔓 Decrypt a file

```bash
./autoEncrypt.sh -d secret.txt.aes secret.txt
```

---

## 🎨 Features

* AES-256-CBC encryption
* Interactive password prompt
* Signal handling (`Ctrl+C`)
* Clean and simple terminal output

---

## ⚠️ Disclaimer

This script is intended for **educational and authorized use only**. The author is not responsible for data loss or misuse.

---

👨‍💻 *Tool by Sergio González Sabucedo*

