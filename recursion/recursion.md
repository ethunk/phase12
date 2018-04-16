**Recursion** refers to the ability of a problem to be solved by repeatedly solving smaller versions of the same problem. In simpler terms, recursion is the ability of a method or function to internally calls itself.

### Learning Goals

* Understand recursion
* Examine a few examples of recursive problem-solving

### Solving Problems Recursively

When solving recursive problems, we typically describe the problem in two parts: 1) The base case, and 2) the recursive case.

For example, let's create a recursive solution for the problem of discovering if a word is a palindrome:

```ruby
def palindrome?(word)
  if word.length < 2
    true
  else
    word[0] == word[-1] && palindrome?(word[1..-2])
  end
end
```

Any word that is zero or one characters is a palindrome. This is our base case.

In the `else` branch of our conditional, we check that the first and last characters are equal. If they are, we send a shortened version of our original word to the `palindrome?` method. This is our recursive case since we are calling a method from inside of its method definition.

Notice that the recursive case works towards the base case. That is, we chop off the first and last characters before making the recursive call. As the data flows through each recursive call, it gets closer to the base case (where the length is less than two). This is the third rule of building a recursive solution.

Here are a couple of examples:


```
palindrome?("racecar")

  (first call)
    "racecar".length => 7
    7 < 2 is false
    "r" == "r" && palindrome?("aceca")

  (second call)
    "aceca".length => 5
    5 < 2 is false
    "a" == "a" && palindrome?("cec")

  (third call)
    "cec".length => 3
    3 < 2 is false
    "c" == "c" && palindrome?("e")

  (fourth call)
    "e".length => 1
    1 < 2 is true
    return true
```

```
palindrome?("dog")

  (first call)
    "dog".length => 3
    3 < 2 is false
    "d" == "g" is false and is the return value
```

#### Rules of Recursion

1. The base case(s) describe results where the solution is known.
2. The recursive case calls the function.
3. The recursive case should work towards the base case.

#### Factorial

[Factorial - Wikipedia](http://en.wikipedia.org/wiki/Factorial)

From Wikipedia:

> In mathematics, the factorial of a non-negative integer n, denoted by n!, is the product of all positive integers less than or equal to n.

For example, the factorial of `5` is `120` or `(5 * 4 * 3 * 2 * 1)`.

**Try to write a ruby program that calculates the factorial of a given number.**

#### Fibonacci Numbers

[Fibonacci Numbers - Wikipedia](http://en.wikipedia.org/wiki/Fibonacci_number)

Can you identify the pattern here?

`0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610`

This series of numbers is referred to as the **Fibonacci Numbers** or **Fibonacci Series**. Starting with 0 and 1, we can calculate the next number in the series by summing up the previous two numbers.

```ruby
# 0 1
0 + 1 = 1

# 0 1 1
1 + 1 = 2

# 0 1 1 2
2 + 1 = 3

# 0 1 1 2 3
2 + 3 = 5
```

A common programming interview question is to calculate the **nth** number in the Fibonacci Series, which is most commonly solved using recursion.

**Try writing a program that does this.** As an extra challenge, try to optimize
your solution so that you can find the 1000th number in the Fibonacci Series in
under a second.

#### Additional Common Programming Puzzles Solved with Recursion

- [Greatest Common Divisor (gcd)]( http://en.wikipedia.org/wiki/Greatest_common_divisor)
- [Eight Queens Puzzle](http://en.wikipedia.org/wiki/Eight_queens_puzzle)
- [Towers of Hanoi (challenging!)](http://en.wikipedia.org/wiki/Tower_of_Hanoi)

### Why This Matters

Once you understand that at its simplest, recursion is the act of solving small versions of a larger problem repetitively until the entire problem is solved you may start to uncover elegant solutions to your own problems that leverage recursion.

### External Resources

- [Recursion Wikipedia](http://en.wikipedia.org/wiki/Recursion_(computer_science))
- [Video - Ruby Kickstart - Introduction to Recursion](http://vimeo.com/24716767)
- [Video - Killing Fibonacci](http://confreaks.com/videos/2741-wickedgoodruby-killing-fibonacci)
- [Project Euler - Even Fibonacci numbers](http://projecteuler.net/index.php?section=problems&id=2)
- [Inception All Over Again: Recursion, Factorials, And Fibonacci In Ruby](http://natashatherobot.com/recursion-factorials-fibonacci-ruby/)
