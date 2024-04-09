def caesar_cipher(text, key)
    for i in 0...text.length do
      char_code = text[i].ord
      (a, z) = case char_code
               when 97..122 then [97, 122]
               when 65..90 then [65, 90]
               else next
               end
  
      rotate = key % 26
  
      char_code += rotate
      char_code -= 26 if char_code > z || (char_code < 91 && char_code < a)
  
      text[i] = char_code.chr
    end
    return text
  end
  
  message = "Pesho is pich"
  encrypted_message = caesar_cipher(message, 5)
  puts encrypted_message
  