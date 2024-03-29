# 2.4 Ambiente Mac

1. [Homebrew](#241-homebrew)
2. [Asdf](#242-asdf)

## 2.4.1 [Homebrew](https://brew.sh/)

O mac tem um gerenciador de pacotes chamado Homebrew, com que é facilmente instalado apenas utilizando o comando

1. Instalar Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Checar se foi instalado (resultado esperado `Homebrew 2.7.5`)

```bash
brew -v
```

3. Instalar ruby

```bash
brew install ruby
```

- Para instalar versão específica é só adicionar o sufixo `@VERSAO`. Para procurar as versões disponíveis:

```bash
brew search ruby
```

Verifique se foi instalado corretamente com(deve retornar a versão instalada)

```bash
ruby -v
```

---

## 2.4.2 [Asdf](https://github.com/asdf-vm/asdf)

É o gerenciador que mais recomendo, pois com ele é possível gerenciar versões de várias linguagens(como PHP, NodeJs, Golang, etc).

1. Baixar asdf
   1.1 Via git
   ```bash
   git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1
   ```
   1.2 Via Homebrew
   ```bash
   brew install asdf
   ```
2. Instalar asdf
   1. Via git
      1. Adicionar o seguinte ao `~/.bash_profile`
         ```bash
         echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
         ```
      1. Completações devem ser configuradas adicionando ao `~/.bash_profile`
         ```bash
         echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile
         ```
   2. Via Homebrew
      1. Adicionar o seguinte ao `~/.bash_profile`
         ```bash
         echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.bash_profile
         ```
      1. Completações devem ser configuradas adicionando ao `~/.bash_profile`
         ```bash
         echo -e "\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" >> ~/.bash_profile
         ```
