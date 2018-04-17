# YOUR CODE HERE
# YOUR CODE HERE
require 'pry'
require 'benchmark'

@cache = {}; @cache[1] = 1; @cache[2] = 1

def fibonacci(n)
  @cache[n] ||= fibonacci(n - 1) + fibonacci(n - 2)
end


def fib(n)
  case
  when n==0 || n==1
    return 0
  when n ==2 || n==3
    return 1
  when n>=4
    sum = 0
    num_one = 1
    num_two = 1
    (n-3).times do
      sum =  num_one + num_two
      num_two = sum
      num_one = num_two
    end
    return sum
  end
end

binding.pry
