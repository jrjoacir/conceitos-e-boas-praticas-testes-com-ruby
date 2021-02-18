require 'date'

class Cliente
  attr_reader :id, :nome, :data_nascimento

  def initialize(id, nome, data_nascimento)
    @id = id
    @nome = nome
    @data_nascimento = data_nascimento
  end

  def self.criar(parametros)
    puts "Simulando gravação do cliente em alguma base de dados"
    nascimento_preenchido = parametros[:data_nascimento] && parametros[:data_nascimento].strip.length > 0
    data_nascimento = nascimento_preenchido ? Date.parse(parametros[:data_nascimento]) : nil
    new(parametros[:id], parametros[:nome], data_nascimento)
  end
end
