#YOUR CODE GOES HERE
require 'pry'
def min_coins(input)
   if input.is_a?(Integer)
    count = 0
     [100,50,25,10,5,1].each do |denomination|
       if (input % denomination) < input
         count += input/denomination
         input = input % denomination
       end
     end
   else
     raise 'Invalid Input'
   end

   return count

end
