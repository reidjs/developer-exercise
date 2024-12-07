class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    arr = str.split
    for i in 0...arr.length
      word = arr[i]
      if word.length > 4
        punctuation = word[-1] =~ /[[:punct:]]/ ? word[-1] : ""
        base_word = punctuation.empty? ? word : word[0...-1]
        
        arr[i] = base_word[0] == base_word[0].upcase ? "Marklar#{punctuation}" : "marklar#{punctuation}"
      end
    end
    arr.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a, b = 1, 1
    sum = 0

    (nth - 2).times do
      a, b = b, a + b
      sum += b if b.even?
    end

    sum
  end

end

