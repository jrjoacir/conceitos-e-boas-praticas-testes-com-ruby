# Script para exibir Programação em Par

## Escopo: cálculo de média de nota de palestra
1. Criar classe Nota Palestra, sabendo que já existe a classe Palestra e que ele é entrada para a classe Nota Palestra
2. Criar método initialize tendo como entrada a palestra e iniciando os valores de nota média e notas (lista de notas)
3. Criar método calcular_nota_media para calcular a nota média da palestra
4. Criar método dar_nota, para atribuir nota a palestra e já calcular a nota média chamando o método calcular_nota_media

### Piloto - Copiloto / Driver - Navigator
1. **Piloto** mostra a criação do método initialize
2. **Piloto** discorre sobre a importância da inicialização das variáveis de instância
3. **Piloto** fala sobre attr_reader
4. **Piloto** diz que quer começar pelo método dar_nota, mas **Copiloto** diz que acha melhor iniciar pelo método calcular_nota_media pois será utilizado pelo método dar_nota
5. **Piloto** aceita a sugestão
6. **Piloto** vai construindo o método de calcular média e "esquece" o valor decimal, **Copiloto** avisa do "problema" que é corrigido pelo **Piloto**
7. **Copiloto** relata sobre a importância de deixar o método calcular_nota_media como privado e **Piloto** altera
8. **Piloto** diz que vai implementar o método dar_nota, explicando o que deve ocorrer

### Ping - Pong / Testador - Codificador
O escopo de desenvolvimento é quase o mesmo, a diferença é que todos os métodos são públicos para ter a chance de escrever dois testes. Mas a mágica é que estes dois desenvolvem "muito rápido" o código depois do teste escrito. ahuahauhauah
1. **Piloto1** diz que vai escrever o teste do método dar_nota, explicando o que deve ocorrer
2. **Copiloto1** codifica os métodos initialize e dar nota, sem a chamada do método calcular_nota_media. Depois roda os testes, que passam
3. **Piloto2** diz que vai escrever o teste do método calcular_nota_media e escreve considerando um resultado decimal
4. **Copiloto2** escreve o método calcular_nota_media enquanto explica, mas o teste falha
5. **Piloto2** diz que faltou tratar o número decimal e que por isso o teste não passou
6. **Copiloto2** corrige código e teste passa :D

### Copiloto no comando / Strong-Style Pairing
O escopo do desenvolvimento é o mesmo, mas aqui a ideia é o Copiloto passar a experiência dele falando sobre os prós e contrás de cada parte da implementação.
1. **Copiloto** explica como vai funcionar a implementação e começa a falar sobre a importância de ter as variáveis de instância inicializadas e os attr_reader.
2. **Piloto** escolhe os nomes **nota** e **notas** para as variáveis de instância
3. **Copiloto** pede para modificar o nome da variável **nota** para **nota_media** e explica a vantagem semântica
4. **Copiloto** pede para se criar o método calcular_nota_media e explica que poderia fazer através de um _loop_, mas que o Ruby já fornece alguns métodos que ajudam na atividade
5. **Copiloto** pede para deixar o método calcular_nota_media privado pois ainda não deve haver uso externo e caso precise da nota_media o atributo já resolve
6. **Piloto** pergunta se não seria o caso de já alterar a variável de instância e **Copiloto** confirma
7. **Piloto** pede para criar o método público dar_nota que adiciona a nota dada a lista de notas e já calcula a nota média

