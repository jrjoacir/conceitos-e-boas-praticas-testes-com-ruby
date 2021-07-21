require_relative 'nota_palestra.rb'

RSpec.describe NotaPalestra do
  let(:nota_palestra) { NotaPalestra.new('palestra_1') }
  describe 'dar_nota' do
    context 'Quando apenas uma nota é atribuída' do
      subject { nota_palestra.dar_nota(nota) }
      let(:nota) { 10 }
      
      it 'retorna a nota média da palestra' do
        expect(subject).to eq 10
      end
    end

    context 'Quando diversas notas são atribuídas' do
      it 'retorna a nota média da palestra' do
        expect(nota_palestra.dar_nota(1)).to eq 1
        expect(nota_palestra.dar_nota(9)).to eq 5
        expect(nota_palestra.dar_nota(2)).to eq 4
        expect(nota_palestra.dar_nota(3)).to eq 3.75
      end
    end
  end
end
