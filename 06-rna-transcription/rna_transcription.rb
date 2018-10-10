require 'pry'

class Complement

  def self.of_dna(dna)
    dna = dna.split("")

    new_rna = []

    dna.each do |nuc|
    case nuc
      when "A"
        new_rna << "U"
      when "T"
        new_rna << "A"
      when "C"
        new_rna << "G"
      when "G"
        new_rna << "C"
      else
        raise ArgumentError , 'An invalid nucleotide was enetered as the DNA'
      end
    end
    return new_rna.reduce(:+)
  end

  def self.of_rna(rna)
    rna = rna.split("")

    new_dna = []

    rna.each do |nuc|
    case nuc
      when "A"
        new_dna << "T"
      when "U"
        new_dna << "A"
      when "C"
        new_dna << "G"
      when "G"
        new_dna << "C"
      else
        raise ArgumentError , 'An invalid nucleotide was enetered as the RNA'
      end
    end
    return new_dna.reduce(:+)
  end
end
