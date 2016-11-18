class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str = str.gsub(/[a-z]{5,}/,      "marklar")
    str = str.gsub(/[A-Z][a-z]{4,}/, "Marklar")
    str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return "No negative numbers" if nth < 0
    return 0 if nth < 3

    prev_prev_num = 1
    prev_num = 1
    even_sum = 0

    3.upto(nth) do
      add = prev_prev_num + prev_num

      prev_prev_num = prev_num
      prev_num = add

      even_sum += add if add.even?

    end

    even_sum
  end
end
