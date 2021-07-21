require_relative 'nota_palestra.rb'

RSpec.describe NotaPalestra do
  describe 'dar_nota' do
    subject { NotaPalestra.new('palestra_1') }

    it 'retorna a nota média da palestra' do
      expect(subject.dar_nota(10)).to eq [10]
      expect(subject.dar_nota(20)).to eq [10, 20]
    end
  end

  describe 'calcular_nota_media' do
    subject do
      nota_palestra = NotaPalestra.new('palestra_1')
      notas.each { |nota| nota_palestra.dar_nota(nota) }
      nota_palestra
    end

    let(:notas) { [1, 9, 2, 3] }

    it 'retorna a nota média da palestra' do
      expect(subject.calcular_nota_media).to eq 3.75
    end
  end
end
