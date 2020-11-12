require_relative 'AnalisadorLinha'

f = File.open('/home/adriano/RubymineProjects/untitled/palavras.txt', "r")
ary = Array.new
f.each_with_index do |textLine, idx|
  teste1 = AnalisadorLinha.new(textLine, idx)
  ary.push(teste1)
end

ary.each_with_index do |value, idx|
  value.analisar()
end