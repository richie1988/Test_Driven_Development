# solver.rb

class Solver
  # Method to calculate factorial of a number N.
  # Raises an exception for negative numbers.
  def factorial(number)
    raise ArgumentError, 'Factorial is not defined for negative numbers' if number.negative?

    # Base case: factorial of 0 is 1
    return 1 if number.zero?

    # Recursive case: n! = n * (n-1)!
    number * factorial(number - 1)
  end

  # Method to reverse a given string word.
  def reverse(word)
    # Using the reverse method for strings
    word.reverse
  end

  # Method to perform fizzbuzz for a given number N.
  def fizzbuzz(number)
    # Checking divisibility by 3 and 5 first
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      # If not divisible by 3 or 5, return N as a string
      number.to_s
    end
  end
end
