class Complement
  def self.of_dna(adn)
    return '' if (adn =~ /^[ACGTU]*$/).nil?
    adn.chars.map{ |char| translate(char) }.join
  end

  def self.translate(nucleotide)
    case nucleotide
    when 'G' then 'C'
    when 'C' then 'G'
    when 'T' then 'A'
    when 'A' then 'U'
    else
      ''
    end
  end
end

module BookKeeping
  VERSION = 4
end
