class Hamming
  def self.compute(dna_one, dna_two)
    raise ArgumentError if dna_one.length != dna_two.length
    return 0 if dna_one.empty? && dna_two.empty?
    return 0 if dna_one == dna_two

    hamming_distance = 0
    dna_one.each_char.with_index do |nucleotide, index|
      hamming_distance += 1 if nucleotide != dna_two[index]
    end
    hamming_distance
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end