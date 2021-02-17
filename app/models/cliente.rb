require 'date'

class Cliente
  attr_reader :id, :nome, :data_nascimento

  def initialize(parametros)
    @id = parametros[:id]
    @nome = parametros[:nome]
    nascimento_preenchido = parametros[:data_nascimento] && parametros[:data_nascimento].strip.length > 0
    @data_nascimento = nascimento_preenchido ? Date.parse(parametros[:data_nascimento]) : nil
  end

  def self.criar(parametros)
    puts "Simulando gravação do cliente em alguma base de dados"
    new(parametros)
  end
end
