class Palestra
  attr_reader :nome, :data, :palestrante

  def initialize(nome, data, palestrante)
    @nome = nome
    @data = data
    @palestrante = palestrante
  end
end

class NotaPalestra
  attr_reader :palestra, :nota_media

  def initialize(palestra)
    @palestra = palestra
    @nota_media = 0.0
    @notas = []
  end

  def dar_nota(nota)
    @notas << nota
    @nota_media = calcular_nota_media
  end

  def calcular_nota_media
    total_de_notas = 0.0
    soma_de_notas = 0.0
    @notas.each do |nota|
      soma_de_notas += nota
      total_de_notas += 1
    end
    soma_de_notas / total_de_notas
  end

  def calcular_nota_media2
    @notas.sum.to_f / @notas.count
  end
end
=begin
  palestra = Palestra.new('p1', '01/01/2020', 'joacir')
  nota_palestra  = NotaPalestra.new(palestra)
  nota_palestra.dar_nota(2)
  nota_palestra.dar_nota(2)
  nota_palestra.dar_nota(8)
=end