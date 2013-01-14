def cypher(str,shift)
  newstr = []
  str.each_char do |letter|
    ascii = letter.ord
    ascii += shift
    newstr << ascii.chr
  end
  newstr.join
end