# find the largest palindrome made from the product of two three-digit numbers.
def largest_palindrome_product
  final = 0

  999.downto(100) do |i|
    i.downto(100) do |j|
      result = (i * j).to_s
      if (result == result.reverse) && (i * j > final) 
        final = i * j
      end
    end
  end
  return final
end