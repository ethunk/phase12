#YOUR CODE GOES HERE
require 'pry'
def caesar_cipher(string, number)
  cipher_string = []
  string.each_byte do |bit|
    if (bit.ord >= 97) && (bit.ord <= 122)
      if (bit + number) > 122
        cipher_string << (bit + number - 26).chr
      else
        cipher_string << (bit + number).chr
      end
    elsif (bit.ord >= 65) && (bit.ord <= 90)
      if (bit + number) > 90
        cipher_string << (bit + number - 26).chr
      else
        cipher_string << (bit + number).chr
      end
    else
      cipher_string << bit.chr
    end
  end
  return cipher_string.join()
end
