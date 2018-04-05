require 'pry'
def duplicate_element_counter(data_array)
  if data_array.class == Array
    output = []

    data_array.each do |element|
      if !(output.include?(element))
        output << element
      end
    end

    return (data_array.count - output.count)
  else
    raise 'Invalid Input'
  end
end

duplicate_element_counter([0,1,2,3,3])
