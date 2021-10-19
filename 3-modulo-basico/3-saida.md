# 3.3 Funções de saída

No desenvolvimento da aplicação há momentos em que é preciso depurar, ou até mesmo para tirar alguma dúvida, ou até para um retorno específico a saída no terminal de alguma variável.

1. [puts](#331-puts)
2. [print](#332-print)
3. [p](#333-p)
4. [pp](#334-pp)

## 3.3.1 puts

É geralmente utilizado quando precisa adicionar automaticamente uma quebra de linha. Sempre retorna `nil`.

```ruby
puts 123
puts 456
```

Saída

```bash
123
456
```

## 3.3.2 print

Quando não é necessário a quebra de linha. Retorna o objeto passado.

```ruby
print 123
print 456
```

Saída

```bash
123456
```

## 3.3.3 p

Útilizado quando precisa verificar alguma coisa(geralmente não vísivel) ou verificar se algum valor está correto. Retorna o objeto passado.

## 3.3.4 pp

Pretty Printing geralmente utilizado para retornar hashes grandes e arrays.

Versões acima de 2.4 precisam fazer o `require 'pp'`
