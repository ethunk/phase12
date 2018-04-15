require_relative 'code.rb'

# As a user
# I want to use a ceasar_cipher
# so that i can encrypt simple strings

#  [] ceasar_cipher encrypts strings with a 2 unit shift cipher
#  [] ceasar_cipher keeps case
#  [] ignores numbers in the cipher

describe '#caesar_cipher(string, number)' do
  it 'shifts each letter of the string number spots down the alphabet' do
    expect(caesar_cipher('test',2)).to eq('vguv')
  end

  it 'ignores numbers and leaves them the same' do
    expect(caesar_cipher('test3',3)).to eq('whvw3')
  end

  it 'keeps case for letters' do
    expect(caesar_cipher('tESt3',9)).to eq('cNBc3')
  end

end
