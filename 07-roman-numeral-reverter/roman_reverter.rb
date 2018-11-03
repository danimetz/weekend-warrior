require "pry"
class Roman
  # Symbol	I	V	X	   L	C	  D	  M
  # Value	  1	5	10	50	100	500	1,000
  # I, II, III, IV, V, VI, VII, VIII, IX, X

  def self.reverter(roman)
    rank = {I: 1, V: 5,	X: 10, L: 50 ,	C: 100, D: 500 , M: 1000}
    rank_letters = ["M", "D", "C", "L", "X", "V", "I"]

    sum = 0

    if roman.length == 1
      sum += rank[roman.to_sym]
    else
      i = 0
      while i < roman.length
        letter = roman[i]
        higher_index = rank_letters.index(letter)
        
        if roman[i+1].nil?
          sum += rank[letter.to_sym]
          i += 1
        elsif higher_index > rank_letters.index(roman[i+1])
          sum += (rank[roman[i+1].to_sym] - rank[letter.to_sym])
          i += 2
        else
          sum += rank[letter.to_sym]
          i += 1
          # binding.pry
        end
      end
    end
    return sum
  end

end

puts Roman.reverter("XXX")
