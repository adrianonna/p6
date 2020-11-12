# O requisito funcional é o desenvolvimento de um programa capaz de ler um arquivo de texto e determinar a(s) palavra(s) que aparece(m) com mais frequência em cada linha do arquivo.
# Escreva uma classe chamada AnalisadorLinha que armazene em seus atributos de instancia o número da linha, o seu conteúdo, a(s) palavra(s) com mais frequência nessa linha.
# No plural pois pode dar empate. O construtor desta classe apenas receberá, via parâmetro, o número e o conteúdo da linha. A classe deverá ter um método para gerar a analise dessa frequencia.
# Em seguida, escreva um programa que leia o conteúdo de um arquivo texto e para cada linha lida do arquivo, crie uma instancia de AnalisadorLinha.
# Guarde essas instancias em um array. No final, imprima, a partir das instancias criadas, quais são as palavras que aparecem com mais frequencia, em cada linha analisada.
# Imprima também, a sua frequencia.



class AnalisadorLinha
  attr_accessor :lineText, :idx

  def initialize(lineText, idx)
    @lineText = lineText
    @idx = idx
  end

  def analisar()
    values = @lineText.split(' ')
    maior = 0
    values.tally.each{
        |key, value|
      if maior < value
        maior = value
      end
    }
    ary = Array.new
    values.tally.each{ |key, value|
      if maior == value
        pf = "Palavra: #{key} - frequencia: #{maior}"
        ary.push(pf)
      end
    }
    p "As palavras com mais frenquencia na linha #{@idx+1} são #{ary}"
  end
end


