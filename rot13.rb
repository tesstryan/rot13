puts "What can I decode for you today?"

def set_alphabet(letter)
  @alphabet = letter =~ /[A-Z]/ ? ('A'..'Z').to_a : ('a'..'z').to_a
end

def decode_letter(letter)
  set_alphabet(letter)
  index = @alphabet.index(letter) + 13
  new_index = index > 25 ? index - 26 : index
  return @alphabet[new_index]
end

def letter?(char)
  char =~ /[A-Za-z]/ ? true :false
end

untranslated = gets.chomp!
translated = ""
untranslated.each_char do |char|
  if letter?(char)
    new_char = decode_letter(char)
  else
    new_char = char
  end
  translated = translated.insert(-1, new_char)
end
puts translated

