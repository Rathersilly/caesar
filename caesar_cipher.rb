def caesar_cipher(string, shift)
  string = string.split("")
  cipher_text = ""
  
  string.each do |x|   
    new_ord = x.ord + shift
    #another way is new_ord -= 26 if x.ord.between?(65, 90)
    if x =~ /[A-Z]/
      new_ord -= 26 if new_ord > 90
      new_ord += 26 if new_ord < 65
      cipher_text += new_ord.chr
    elsif x =~ /[a-z]/     
      new_ord -= 26 if new_ord > 122
      new_ord += 26 if new_ord < 97
      cipher_text += new_ord.chr
    else
      cipher_text += x
    end
  end
  
  puts cipher_text
  return cipher_text  
end

hey = caesar_cipher("WHAT a String!", -5)

caesar_cipher(caesar_cipher(hey, 2), 3)