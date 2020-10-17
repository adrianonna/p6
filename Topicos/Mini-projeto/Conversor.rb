f = File.open('letter-recognition.data', "r")
f2 = File.open('ajustado.data', "w")
f.each_line { |values|

  p "values antes= #{values}"

  values[0] = values[0].gsub("A", "1")
  values[0] = values[0].gsub("B", "2")
  values[0] = values[0].gsub("C", "3")
  values[0] = values[0].gsub("D", "4")
  values[0] = values[0].gsub("E", "5")
  values[0] = values[0].gsub("F", "6")
  values[0] = values[0].gsub("G", "7")
  values[0] = values[0].gsub("H", "8")
  values[0] = values[0].gsub("I", "9")
  values[0] = values[0].gsub("J", "10")
  values[0] = values[0].gsub("K", "11")
  values[0] = values[0].gsub("L", "12")
  values[0] = values[0].gsub("M", "13")
  values[0] = values[0].gsub("N", "14")
  values[0] = values[0].gsub("O", "15")
  values[0] = values[0].gsub("P", "16")
  values[0] = values[0].gsub("Q", "17")
  values[0] = values[0].gsub("R", "18")
  values[0] = values[0].gsub("S", "19")
  values[0] = values[0].gsub("T", "20")
  values[0] = values[0].gsub("U", "21")
  values[0] = values[0].gsub("V", "22")
  values[0] = values[0].gsub("W", "23")
  values[0] = values[0].gsub("X", "24")
  values[0] = values[0].gsub("Y", "25")
  values[0] = values[0].gsub("Z", "26")

  p "values depois= #{values}"
  f2.puts values
}