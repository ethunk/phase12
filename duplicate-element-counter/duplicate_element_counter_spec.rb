require_relative "duplicate_element_counter.rb"


describe "DuplicateElementCounte" do
    it 'for a given input it give the correct output' do
    example = [0,0,0,2,2,2,3,5]

    expect(duplicate_element_counter(example)).to eq(4)
  end

  it 'raises an error if not given an array as an input' do
    expect{ duplicate_element_counter(4)}.to raise_error "Invalid Input"
  end
end
