def caesar_cipher(message, shift_factor)
  result = ''
  message.each_char do |char|
    base = char.ord < 91 ? 65 : 97
    # Modifies Lowercase & Uppercase
    result += char.ord.between?(65, 90) || char.ord.between?(97, 122) ?
      ((((char.ord - base) - shift_factor) % 26) + base).chr
      : char
  end
  result
end
