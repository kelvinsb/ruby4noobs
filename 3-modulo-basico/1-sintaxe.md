# 3.1 Sintaxe

**Atenção** para todos os comandos básicos é recomendado utilizar o `ìrb` para melhor feedback e entedimento.

1. [Blocos de código](#311-blocos-de-código)

---

A sintaxe do ruby é focada em ser simples e exata, o mais próxima da língua tradicional que temos hoje em dia, considerada linguagem de alto nível(mais próxima do mundo real do que do mundo das máquinas).

Tudo é considerado objeto, até mesmo os tipos primitivos(string, número e booleano) e funções/métodos.

Não é necessário adicionar ponto e vírgula no final de cada trecho como em outras linguagens/regras.

---

## 3.1.1 Blocos de código

Em alguns blocos de código como funções/métodos e trechos isolados podem começar com begin e terminar com end, ou mesmo omitir o end(no caso de métodos/funções).

[Exemplo](exemplos/1_bloco_codigo.rb)

```ruby
# 3-modulo-basico/exemplos/1_bloco_codigo.rb
begin
  a = 1
  b = 3
  c = a + b
  puts c
end
```
