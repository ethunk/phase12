require_relative "code.rb"

# As a human,
# I want to know how many coins are in any amount
# So that I can make room in my coin purse

# min_coins() accepts integer values only
# returns an integer that
# gives an error if input is not an integer

describe "min_coins() " do
  it 'min_coins() accepts an integer and returns an integer' do
    expect(min_coins(200)).to be_kind_of(Integer)
  end

  it 'raises an error if not given an integer' do
      expect{ min_coins('st')}.to raise_error "Invalid Input"
  end
end
