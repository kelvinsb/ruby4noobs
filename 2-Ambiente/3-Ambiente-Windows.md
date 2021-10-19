# 2.3 Ambiente Windows

1. [Chocolatey](#231-chocolatey)
   - [Requisitos](#2311-requisitos)
   - [Passos](#2312-passos)
2. [RubyInstaller](#232-rubyinstaller)

## 2.3.1 [Chocolatey](https://chocolatey.org/install)

Chocolatey é um gerenciador de pacotes para Windows(semelhante ao apt do Ubuntu e o brew do Mac)

### 2.3.1.1 Requisitos

- Windows 7+
- PowerShell v3+
- .Net Framework 4+

### 2.3.1.2 Passos

1. Instalação do chocolatey
   1. Garanta que abriu o terminal(shell) com privilégio de administrador
      - Geralmente basta procurar na barra de busca(tecla Windows) como Prompt de comando - Windows Terminal ou Windows PowerShell - e com o botão direito em cima dele clicar em `Executar como administrador`
   2. `Get-ExecutionPolicy`
      - Se aparecer como `Restricted` ou `Restrito` então execute `Set-ExecutionPolicy AllSigned` ou `Set-ExecutionPolicy Bypass -Scope Process``
   3. `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))``
   4. Aguarde alguns segundos para completar
   5. Se não houve erros então digite para verificar se foi instalado
      ```bash
       choco
      ```
2. Instalar ruby

```bash
choco install ruby 2.7.2.1
```

## 2.3.2 [RubyInstaller](https://rubyinstaller.org/downloads/)

Instalação com instalador prático(semelhante aos outros que são instalados no windows), basta baixar qualquer um do [link](https://rubyinstaller.org/downloads/), recomendado o abaixo do `WITHOUT DEVKIT`
