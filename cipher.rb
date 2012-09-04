# a ceasar shift cypher using some arrays to iterate throught the message.

plain_message = "Nnn nnN Nnn N nnn ^nnn! NNN NNN$N%nnnNnn"

encoded =""

caps_array = ("A".."Z").to_a
lowercase_array = ("a".."z").to_a

plain_message.each_char do
  |letter, letter_holder|

  if caps_array.include?(letter)
  letter_holder = caps_array.index(letter)
  caps_array.rotate!(13)
    encoded << caps_array[letter_holder] 

    elsif lowercase_array.include?(letter)
    letter_holder = lowercase_array.index(letter)
    lowercase_array.rotate!(13)
     encoded << lowercase_array[letter_holder] 

      elsif
      encoded << letter
  end #end of the if block checking for the letter in the array.

  end #end of the each_char block

  puts encoded
