require 'pry'
# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number.nil? || number < 0
  return true if number < 10 && number >= 0

  length = Math.log10(number).to_i + 1
  (length / 2).times do |i|
    return false if (number / (10 ** (length - 1 - i) )) % 10 != (number % (10 ** (i + 1))) / (10 ** i)
  end

  return true
end
