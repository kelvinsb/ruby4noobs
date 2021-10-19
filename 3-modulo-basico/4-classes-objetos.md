# 4.4 Classes e objetos

1. [Definindo classe](#441-definindo-classe)
   1. [Variáveis na classe Ruby](#4411-variáveis-na-classe-ruby)
2. [Criando objetos/instâncias](#442-criando-objetos)
3. [Criando métodos](#443-criando-métodos)
4. [Exemplo](#444-exemplo)

Ruby é considerado uma linguagem Orientada a Objetos(OO) perfeita. Com recursos como:

1. Encapsulamento de dados: evitar que acessos indevidos ocorram.
2. Abstração de dados: esconder detalhes de algo.
3. Polimorfismo: métodos com assinaturas diferentes tem comportamentos diferentes(para mais detalhes verifique alguma guia de Programação Orientada a objetos(POO)).
4. Herança: classe Cachorro herda alguns comportamentos da class Animal(comportamentos em comum).

Para fins de facilitar o entendimento, de forma resumida: `Classe` é a definição de algo, `instância/objeto` a utilização da classe.

## 4.4.1 Definindo classe

```ruby
class Cliente
end
```

### 4.4.1.1 Variáveis na classe Ruby

1. Variável local: são vísiveis apenas dentro da classe
2. Variável de instância: únicas de cada instância, mudando para cada objeto. Com prefio: `@`
3. Variável de classe: em comum com todas as instâncias. Com prefixo: `@@`.
4. Variável global: acessível em todo o sistema. Com prefixo `$`.

### 4.4.2 Criando objetos

Objetos são instâncias da classe e são criados utilizando o sufido `.new`.

### 4.4.3 Criando métodos

Em classes as funções são chamadas de métodos(a sintaxe é a mesma), basta adicionar um bloco de código com inicio de `def` seguido com o nome do método e os parâmetros dentro dos parentes separados por vírgula. Exemplo:

```ruby
def somar_valores(primeiro, segundo)
    primeiro + segundo
end
```

Caso queira adicionar valores automaticamente quando criar o objeto basta criar um método chamado `ìnitialize` com os parâmetros dele.

### 4.4.4 Exemplo:

```ruby
class Cliente
  @@quantidade = 0 # variável de classe
  @nome = ''  # variável de instância

  def initialize(nome)
    @nome = nome
    @@quantidade += 1
  end

  def quantidade
    @@quantidade
  end

  def nome # equivalente a attr_reader :nome
    @nome
  end

  def set_nome=(nome) # equivalente a attr_writer :nome
    @nome = nome
  end

  def quantidade # equivalente a attr_reader :quantidade
    @@quantidade
  end

  def set_quantidade=(quantidade) # equivalente a attr_writer :quantidade
    @@quantidade = quantidade
  end

end
primeiro_cliente = Cliente.new "ronaldo"
puts primeiro_cliente.quantidade, primeiro_cliente.nome # 1, ronaldo
segundo_cliente = Cliente.new "tiago"
puts segundo_cliente.quantidade, segundo_cliente.nome # 2, tiago

puts primeiro_cliente.quantidade, primeiro_cliente.nome # 2, ronaldo
puts segundo_cliente.quantidade, segundo_cliente.nome # 2, tiago

primeiro_cliente.set_nome = "jose"
segundo_cliente.set_nome = "joao"
puts primeiro_cliente.nome, segundo_cliente.nome # jose, joao
primeiro_cliente.set_quantidade = 5
puts primeiro_cliente.quantidade, segundo_cliente.quantidade # 5, 5
```

Com as facilidades do Ruby os seguintes trechos são equivalentes para formas reduzidas:

#### Leitura

```ruby
  [...]
  def nome
    @nome
  end
```

```ruby
  attr_reader :nome
  [...]
```

#### Escrita

```ruby
  [...]
  def nome=(nome)
    @nome = nome
  end
```

```ruby
  attr_writer :nome
  [...]
```

#### Escrita e leitura

```ruby
  [...]
  def nome=(nome)
    @nome = nome
  end

  def nome
    @nome
  end

```

```ruby
  attr_accessor   :nome
  [...]
```
