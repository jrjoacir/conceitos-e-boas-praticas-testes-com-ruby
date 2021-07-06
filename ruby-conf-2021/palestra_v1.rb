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

  # o método dar_nota não checa os limites (entre 0 e 10?)
  def dar_nota(nota)
    # utilização do método push é mais semântico
    @notas << nota
    @nota_media = calcular_nota_media
  end

  # o método calcular_nota_media pode ser privado
  def calcular_nota_media
    # problema com falta de valor decimal
    total_de_notas = 0
    soma_de_notas = 0
    @notas.each do |nota|
      soma_de_notas += nota
      total_de_notas += 1
    end
    
    soma_de_notas / total_de_notas
  end
end
=begin
  palestra = Palestra.new('p1', '01/01/2020', 'joacir')
  nota_palestra  = NotaPalestra.new(palestra)
  nota_palestra.dar_nota(2)
  nota_palestra.dar_nota(2)
  nota_palestra.dar_nota(8)
  nota_palestra.dar_nota(1)
  # resultado correto 3,25
=end