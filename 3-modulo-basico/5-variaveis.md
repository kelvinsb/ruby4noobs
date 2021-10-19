# 3.5 Variáveis

Variáveis são dados isolados. Podem ser usados para armazenador dados para depois serem utilizados, inclusive em outras variáveis ou retornos.

Todas as variáveis do Ruby são dinâmicas e fortes – ou seja não precisa especificar o tipo delas nem de declarar. Para declarar/alterar basta:

```ruby
variavel_numero = 123
variavel_texto = "texto"
puts variavel_numero, variavel_texto
```

O padrão para variáveis/símbolos/métodos no Ruby é snake_case, ou seja, se o nome no mundo real é `formato para entrega` então fica `formato_para_entrega` ([para entender mais o padrão da línguagem](https://rubystyle.guide)(inglês))

O último comando é utilizado para imprimir(exibir) os resultados.
Apesar da tipagem ser dinâmica os tipos mais comuns são

1. String(coleção de Char(caracteres))
2. Booleanos: Verdadeiro(true) ou falso(false)
3. Número: Valor numérico
4. Array: lista de valores
5. Hash: lista de chaves/valores

- Núlo: utilizada como `nil`

Se tiver na dúvida de qual tipo é basta digitar `.class` após a variável. Exemplo:

[Exemplo](exemplos/5_tipos.rb)

```ruby
# ruby 3-modulo-basico/exemplos/5_tipos.rb
"teste".class # String
123.class # Integer
123.22.class #Float
true.class # TrueClass
nil.class # NilClass
[1,2,3].class # Array
[1,2,3][1] # 2
{"nome" => "joao", "idade" => 25}.class # Hash
{"nome" => "joao", "idade" => 25}["nome"] # "joao"
```

Há métodos melhores para visualizar, os acimas são mais para referência

- As variáveis são case-sensitives, então por exemplo CAIXA ALTA e caixa baixa são diferentes: `Nome` é diferente de `nome`, `nOme` diferente de `Nome`
- Para "contatenar" variáveis há varias maneiras
  1.  **Concatenação:** `nome + " tem " + idade.to_s + " anos"`
  2.  **Interpolação:** `"#{nome} tem #{idade} anos"`

[Exemplo](exemplos/5_nome.rb)

```ruby
# ruby 3-modulo-basico/exemplos/5_nome.rb
nome = "Ronaldo"
idade = 23
puts nome + " tem " + idade.to_s + " anos" # "ronaldo tem 23 anos"
puts "#{nome} tem #{idade} anos" # "ronaldo tem 23 anos"
```

**Obs:** o método `.to_s` na terceira linha é utilizado para converter para string.
