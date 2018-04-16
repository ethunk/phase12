require_relative 'code.rb'

# As a user
# I want to use a minimum_consecutive_integers
# so know the number of integers i have to add to an array to make it consecutive

#  [] minimum_consecutive_integers works with positive integers
#  [] minimum_consecutive_integers works with negative integers

describe '#minimum_consecutive_integers([])' do
  it 'works wit postive integers' do
    expect(minimum_consecutive_integers([0,1,4,5])).to eq(2)
  end

  it 'works wit negative integers' do
    expect(minimum_consecutive_integers([-4,2])).to eq(5)
  end

end
