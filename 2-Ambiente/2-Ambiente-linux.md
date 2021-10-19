# 2.2 Ambiente Linux

Para ambientes linux são recomendadas várias maneiras, sobretudo a utilização de gerenciadores de versões(para maior facilidade na hora de trocar de versão, muito comum em ambientes corporativos em que tem diversos serviços com versões diferentes).

1. [Asdf](#221-asdf)
   - [Porque utilizar ele?](#2211-porque-utilizar-ele)
   - [Passo a passo](#2212-passo-a-passo)
2. [Rvm](#222-rvm)
   - [Ubuntu](#2221-ubuntu)
   - [Versão do sistema diferente do Ubuntu](#2222-versão-do-sistema-diferente-do-ubuntu)

---

## 2.2.1 [Asdf](https://github.com/asdf-vm/asdf)

É o gerenciador que mais recomendo, pois com ele é possível gerenciar versões de várias linguagens(como PHP, NodeJs, Golang, etc).

### 2.2.1.1 Porque utilizar ele?

- Após instalar as versões, pode se criar um arquivo em cada projeto com a versão da linguagem e ele automaticamente já reconhece.
- Mesmo gerenciador para múltiplas linguagens.

### 2.2.1.2 Passo a passo

Todos os comandos são inseridos no terminal(geralmente CTRL + T ou SUPER(comumente chamado de tecla Windows) + T)

1. Instalar dependências
   - **Aptitude**
     ```bash
     sudo apt install curl git
     ```
   - **DNF**
     ```bash
     sudo dnf install curl git
     ```
   - **Pacman**
     ```bash
     sudo pacman -S curl git
     ```
   - **Zypper**
     ```bash
     sudo zypper install curl git
     ```
2. Baixar asdf
   É recomendado utilizar via git:
   - **Git**
     ```bash
     git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1
     ```
3. Instalar asdf
   1. Adicionar o seguinte ao `~/.bashrc`
      ```bash
      echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
      ```
      - Se utilizar ZSH(caso não saiba o que é isto utilize o acima)
        ```bash
        echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
        ```
   2. Completações devem ser configuradas adicionando ao `~/.bashrc`
      ```bash
      echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
      ```
      - Se utilizar ZSH(caso não saiba o que é isto utilize o acima)
        ```bash
        echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
        ```
   3. Aplicar as mudanças ao terminal atual
      ```bash
      source ~/.zshrc
      ```
   4. Verificar se foi instalado(deve retornar algo como `v.0.8.0`)
      ```bash
      asdf --version
      ```
4. Adicionar plugin do Ruby
   ```bash
   asdf plugin-add ruby
   ```
5. Instalar versão do ruby
   ```bash
   asdf install ruby 2.7.2
   ```
6. Utilizar versão como global(padrão)
   ```bash
   asdf global ruby 2.7.2
   ```
7. Verificar se ruby foi instalado corretamente(deve retornar algo com `ruby 2.7.2`)
   ```bash
   ruby -v
   ```

Para entender melhor sobre e para outras linguagens basta procurar no google `github asdf LINGUAGEM` e geralmente vai aparecer um guia rápido para instalação. Como este não é o foco, com os passos acima já deve ser possível a utilização.

---

## 2.2.2 [RVM](https://rvm.io/)

### 2.2.2.1 [Ubuntu](https://github.com/rvm/ubuntu_rvm)

1. Instalar dependências
   ```bash
   sudo apt-get install software-properties-common
   ```
2. Adicionar PPA e instalar pacote

```bash
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm
```

Adicionar seu usuário ao grupo do `rvm`(`$USER` será automaticamente inserido ao seu usuário)

```bash
sudo usermod -a -G rvm $USER
```

3. Instalar o ruby

```bash
rvm install ruby
```

- Caso queira instalar versão específica apenas adicione a versão após
  ```bash
  rvm install ruby 2.7.2
  ```
- Usar versão específica
  ```bash
  rvm use 2.7.2
  ```

4. Reiniciar sistema.
5. Checar se foi instalado
   ```bash
   ruby -v
   ```

### 2.2.2.2 [Versão do sistema diferente do Ubuntu](https://rvm.io/rvm/install)

1. Adicionar chaves GPG
   ````bash
   gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
   ```7D2BAF1CF37B13E2069D6956105BD0E739499BDB`
   ````
2. Instalar RVM com ruby
   ```bash
   \curl -sSL https://get.rvm.io | bash -s stable --ruby
   ```
3. Reiniciar sistema.
4. Checar se foi instalado
   ```bash
   ruby -v
   ```
