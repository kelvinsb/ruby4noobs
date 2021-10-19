# 3.6 Operadores aritméticos

São muitos utilizados no dia a dia, tais como:

1. [Adição (+)](#361-adição)
2. [Subtração (-)](#362-subtração)
3. [Multiplicação (\*)](#363-multiplicação)
4. [Divisão (/)](#364-divisão)
5. [Módulo (%)](#365-módulo)
6. [Expoente (\*\*)](#366-expoente)
7. [Considerações](#367-considerações)

## 3.6.1 Adição

Adiciona entre valores

[Exemplo](exemplos/6/adicao.rb)

```ruby
# ruby 3-modulo-basico/exemplos/6/adicao.rb
primeiro_valor = 10
segundo_valor = 40
soma = primeiro_valor + segundo_valor
puts soma # 50
```

## 3.6.2 Subtração

Subtração entre valores

[Exemplo](exemplos/6/subtracao.rb)

```ruby
# ruby 3-modulo-basico/exemplos/6/subtracao.rb
primeiro_valor = 50
segundo_valor = 30
subtracao = primeiro_valor - segundo_valor
puts subtracao # 20
```

## 3.6.3 Multiplicação

[Exemplo](exemplos/6/multiplicacao.rb)

```ruby
# ruby 3-modulo-basico/exemplos/6/multiplicacao.rb
primeiro_valor = 2
segundo_valor = 5
multiplicacao = primeiro_valor * segundo_valor
puts multiplicacao # 10
```

## 3.6.4 Divisão

[Exemplo](exemplos/6/divisao.rb)

```ruby
# ruby 3-modulo-basico/exemplos/6/divisao.rb
primeiro_valor = 15
segundo_valor = 3
divisao = primeiro_valor / segundo_valor
puts divisao # 5
```

## 3.6.5 Módulo

Retorna o resto da divisão. Muito útil para interações em estruturas de dados. Exemplo: A multiplicação inteira mais próxima para `20/3` é de `3 * 6 = 18`, logo `20 - 18 = 2`.

[Exemplo](exemplos/6/modulo.rb)

```ruby
# ruby 3-modulo-basico/exemplos/6/modulo.rb
primeiro_valor = 20
segundo_valor = 3
resto = primeiro_valor % segundo_valor
puts resto # 2
```

## 3.6.6 Expoente

Efetua um cálculo exponencial de operadores. 5\*_3 retorna 5 com poder de 3. Ou seja: 5 _ 5 \* 5

[Exemplo](exemplos/6/expoente.rb)

```ruby
# ruby 3-modulo-basico/exemplos/6/expoente.rb
primeiro_valor = 5
segundo_valor = 3
resto = primeiro_valor ** segundo_valor
puts resto # 125
```

## 3.6.7 Considerações

É possível fazer diversas operações na mesma linha ou encadeando elas, mas deve se prestar atenção a ordem de precedência, caso queira fazer com que algo tenha mais preferência deve se colocar a um parenteses mais interno, ou em variável separada.

Ordem(primeiro tem preferência): 0. () (Parênteses)

1. \*\* (Exponenciação)
2. !, ~, + (Negação, bitwise complemento, soma unária)
3. \*, / , % (multiplicação, divisão, módulo)
4. +, - (soma, subtração)

Por exemplo:

```ruby
a = 20
b = 10
c = 15
d = 5

resultado = (a + b) * c / d;      # ( 30 * 15 ) / 5
puts resultado # 90

resultado = ((a + b) * c) / d;    # (30 * 15 ) / 5
puts resultado # 90

resultado = (a + b) * (c / d);   # (30) * (15/5)
puts resultado # 90

resultado = a + (b * c) / d;     #  20 + (150/5)
puts resultado # 50

```
