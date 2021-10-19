## 3.2 Comentários

1. [Uma linha](#321-uma-linha)
2. [Múltiplas linhas](#322-múltiplas-linhas)

São comumente utilizados para documentar o código para melhor entendimento do código em partes complexas. É muito comum no ínicio para entender depois o que foi feito, mas segundo as boas práticas variáveis legíveis removem a necessidade de comentários. Por exemplo: `nomeCliente` e `idadeCliente` são mais explícitas que `nome` e `idade` ou até mesmo `x` e `y`. Esta prática é mais vísivel quando o projeto começa a ficar grande e com mais colaboradores.

### 3.2.1 Uma linha

```ruby
# Linha isolada
nome = "Ronaldo" #Declarou o nome
```

### 3.2.2 Múltiplas linhas

Funciona apenas quando executado em arquivo

```ruby
=begin
    Comentário
    Novamente outro
    Adicionados sem problema
=end
quantidade = 2
```
