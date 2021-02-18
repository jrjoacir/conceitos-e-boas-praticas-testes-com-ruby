class ClienteRepository
  def self.criar(parametros)
    puts 'Preparando criação de cliente na base de dados'

    begin
      Cliente.criar(parametros)
    rescue => erro
      raise RuntimeError, 'Erro ao criar cliente'
    end
  end
end
