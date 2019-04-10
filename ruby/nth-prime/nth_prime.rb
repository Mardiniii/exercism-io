class Prime
  class << self
    def nth(number)
      raise ArgumentError if number <= 0

      count = 0

      (0..Float::INFINITY).each do |num|
        next unless is_prime?(num)

        count += 1
        return num if count == number        
      end
    end

    def is_prime?(number)
      return false if number <= 1

      Math.sqrt(number).floor.downto(2).none? { |divider| number % divider == 0 }
    end
  end
end
