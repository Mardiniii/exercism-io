class Pangram
  def self.pangram?(sentence)
    alphabet = ('a'..'z').to_a
    hash = Hash.new { |hash, key| hash[key] = 0 }

    sentence.downcase.scan(/[a-z]/).each { |c| hash[c] += 1 }

    hash.keys.size == alphabet.size && hash.values.all? { |v| v >= 1 }
  end
end
