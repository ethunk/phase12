#YOUR CODE GOES HERE
def minimum_consecutive_integers(array)
  array.uniq!
  return (array.max-array.min-array.count)+1
end
