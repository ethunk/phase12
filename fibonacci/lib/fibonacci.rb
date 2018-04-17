# YOUR CODE HERE
# YOUR CODE HERE
require 'pry'
require 'benchmark'

@cache = {}; @cache[1] = 1; @cache[2] = 1

def fibonacci(n)
  @cache[n] ||= fibonacci(n - 1) + fibonacci(n - 2)
end
