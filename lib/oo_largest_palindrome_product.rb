# find the largest palindrome made from the product of two three-digit numbers.
class LargestPalindromeProduct
  def palindrome?(n)
    n == n.to_s.reverse.to_i
  end

  def answer
    final = 0

    999.downto(100) do |i|
      i.downto(100) do |j|
        result = (i * j)
        if palindrome?(result) && (i * j > final) 
          final = i * j
        end
      end
    end
    return final
  end
end