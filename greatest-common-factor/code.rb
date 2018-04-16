#YOUR CODE GOES HERE
require 'pry'
def gfc(num_one, num_two)

  return num_one if (num_one == num_two || (num_one == 0))

  5.times do
    if num_one > num_two
      num_one = num_one % num_two
      return num_two if num_one == 0
    elsif num_one < num_two
      num_two = num_two % num_one
      return num_one if num_two == 0
    end
  end

end


# The version of the Euclidean algorithm described above (and by Euclid) can take many subtraction steps to find the GCD when one of the given numbers is much bigger than the other. A more efficient version of the algorithm shortcuts these steps, instead replacing the larger of the two numbers by its remainder when divided by the smaller of the two (with this version, the algorithm stops when reaching a zero remainder). With this improvement, the algorithm never requires more steps than five times the number of digits (base 10) of the smaller integer. This was proven by Gabriel Lamé in 1844, and marks the beginning of computational complexity theory. Additional methods for improving the algorithm's efficiency were developed in the 20th century.
