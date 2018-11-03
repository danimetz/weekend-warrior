require "pry"
class Roman
  # Symbol	I	V	X	   L	C	  D	  M
  # Value	  1	5	10	50	100	500	1,000
  # I, II, III, IV, V, VI, VII, VIII, IX, X

  def self.reverter(roman)
    rank = {I: 1, V: 5,	X: 10, L: 50 ,	C: 100, D: 500 , M: 1000}
    rank_letters = ["M", "D", "C", "L", "X", "V", "I"]

    sum = 0
    i = 0

    #I want to loop through every index of the roman numeral given
    while i < roman.length
      letter = roman[i]

      #I will use this to check if the next roman numeral has a higher value
      higher_index = rank_letters.index(letter)

      #If we are at the last index of the roman numeral just add the current value to the sum
      if roman[i+1].nil?
        sum += rank[letter.to_sym]
        i += 1
      # If the next index is higher value then we need to subtract the current value of the
      # roman numeral from the next vlaue of the roman numeral
      elsif higher_index > rank_letters.index(roman[i+1])
        sum += (rank[roman[i+1].to_sym] - rank[letter.to_sym])
        i += 2
      #Otherwise just add the value of the roman numeral
      else
        sum += rank[letter.to_sym]
        i += 1
      end
    end
    return sum
  end


end
