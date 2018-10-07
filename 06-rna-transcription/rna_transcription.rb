require 'pry'

class Complement

  def self.of_dna(dna)
    dna = dna.split("")
    check_dna = dna.select { |nuc|  nuc == "A" || nuc == "T" || nuc == "G" || nuc == "C"  }
    if dna.length != check_dna.length
      raise ArgumentError, 'An invalid nucleotide was enetered as the DNA'
    end

    new_dna = []

    dna.each do |nuc|
    case nuc
      when "A"
        new_dna << "U"
      when "T"
        new_dna << "A"
      when "C"
        new_dna << "G"
      when "G"
        new_dna << "C"
      else
        raise ArgumentError
      end
    end
    return new_dna.reduce(:+)
  end

  def self.of_rna(dna)
    dna = dna.split("")
    check_dna = dna.select { |nuc|  nuc == "A" || nuc == "U" || nuc == "G" || nuc == "C"  }
    if dna.length != check_dna.length
      raise ArgumentError,'An invalid nucleotide was enetered as the RNA'
    end

    new_rna = []

    dna.each do |nuc|
    case nuc
      when "A"
        new_rna << "T"
      when "U"
        new_rna << "A"
      when "C"
        new_rna << "G"
      when "G"
        new_rna << "C"
      else
        raise ArgumentError
      end
    end
    return new_rna.reduce(:+)
  end
end
