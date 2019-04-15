# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) because the number of iterations is dependent on the size of the number
# Space complexity: O(1) because there will only ever be 4 int variables created, regardless of the size of the number
def fibonacci(n)
  if n && n >= 0
    current = 0
    one_before = 0
    two_before = 0
    i = 0
    while i <= n
      if i == 1
        current = 1
      else
        two_before = one_before
        one_before = current
        current = one_before + two_before
      end
      i += 1
    end
    return current
  else
    raise ArgumentError, "n must be an integer greater than 0"
  end
end
