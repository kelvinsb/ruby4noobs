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
puts '---'
segundo_cliente = Cliente.new "tiago"
puts segundo_cliente.quantidade, segundo_cliente.nome # 2, tiago
puts '---'

puts primeiro_cliente.quantidade, primeiro_cliente.nome # 2, ronaldo
puts '---'
puts segundo_cliente.quantidade, segundo_cliente.nome # 2, tiago
puts '---'

primeiro_cliente.set_nome = "jose"
segundo_cliente.set_nome = "joao"
puts primeiro_cliente.nome, segundo_cliente.nome # jose, joao
puts '---'
primeiro_cliente.set_quantidade = 5
puts primeiro_cliente.quantidade, segundo_cliente.quantidade # 5, 5