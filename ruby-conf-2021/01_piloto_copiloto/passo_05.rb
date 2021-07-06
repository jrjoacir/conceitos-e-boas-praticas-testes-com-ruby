class Palestra
  attr_reader :nome, :data, :palestrante

  def initialize(nome, data, palestrante)
    @nome = nome
    @data = data
    @palestrante = palestrante
  end
end

class NotaPalestra
  attr_reader :palestra, :nota_media, :notas

  def initialize(palestra)
    @palestra = palestra
    @nota_media = 0.0
    @notas = []
  end

  private

  def calcular_nota_media
    total_de_notas = 0
    soma_de_notas = 0.0
    @notas.each do |nota|
      soma_de_notas += nota
      total_de_notas += 1
    end
    
    soma_de_notas / total_de_notas
  end
end
