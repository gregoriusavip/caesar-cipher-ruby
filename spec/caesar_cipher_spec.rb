# frozen_string_literal: true

require_relative '../script'

describe '#alphabet?' do
  context 'when the argument is an alphabet character' do
    it 'returns true' do
      char = 'a'
      result = alphabet?(char)
      expect(result).to eq(true)
    end
  end

  context 'when the argument is not an alphabet character' do
    it 'returns false' do
      char = '7'
      result = alphabet?(char)
      expect(result).to eq(false)
    end
  end
end

describe '#shift_alphabet' do
  let(:char) { 'a' }

  context 'when char "a" is shifted to the right(positive) 4 times' do
    it 'returns "e"' do
      number_of_shift = 4
      result = shift_alphabet(char, number_of_shift)
      expect(result).to eq('e')
    end
  end

  context 'when char "a" is shifted the left(negative) 4 times' do
    it 'returns "e"' do
      number_of_shift = -4
      result = shift_alphabet(char, number_of_shift)
      expect(result).to eq('w')
    end
  end
end

describe '#caesar_cipher' do
  context 'when original_string is shifted by num_shift' do
    it 'returns "Nchm Oqnidbs!"' do
      original_string = 'Odin Project!'
      number_of_shift = 25
      result = caesar_cipher(original_string, number_of_shift)
      expect(result).to eq('Nchm Oqnidbs!')
    end
  end

  context 'when ciphered_string is shifted by num_shift' do
    it 'returns "Odin Project!"' do
      original_string = 'Nchm Oqnidbs!'
      number_of_shift = -25
      result = caesar_cipher(original_string, number_of_shift)
      expect(result).to eq('Odin Project!')
    end
  end
end
