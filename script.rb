# frozen_string_literal: true

def alphabet?(char)
  (char.ord >= 65 && char.ord <= 90) || (char.ord >= 97 && char.ord <= 122)
end

def shift_alphabet(char, num_shift)
  range = char.ord >= 97 ? (97..122) : (65..90)
  char = char.ord + num_shift
  case char
  when range
    char.chr
  when 0...range.min
    (char + 26).chr
  else
    (char - 26).chr
  end
end

def caesar_cipher(string, num_shift)
  result = ''
  string.each_char { |char| result += alphabet?(char) ? shift_alphabet(char, num_shift) : char }
  result
end
