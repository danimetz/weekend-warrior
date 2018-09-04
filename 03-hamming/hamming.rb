class Hamming

  # attr_reader = :hamming_distance
  # def initialize
  #   @hamming_distance = 0
  #
  # end

  def self.compute(dna1, dna2)
    dna1 = dna1.split("")
    dna2 = dna2.split("")

    if dna1.length != dna2.length
      raise ArgumentError.new('The two DNA strands must be the same length')
    end


    count = 0
    dna1.length.times do |index|
      if dna1[index] != dna2[index]
        count += 1
      end
    end
    return count
  end

end
