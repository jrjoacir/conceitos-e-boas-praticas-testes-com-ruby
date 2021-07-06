class Palestra
  attr_reader :nome, :data, :palestrante

  def initialize(nome, data, palestrante)
    @nome = nome
    @data = data
    @palestrante = palestrante
  end
end

class NotaPalestra
  def initialize(palestra)
    @palestra = palestra
    @nota_media = 0.0
    @notas = []
  end
end
