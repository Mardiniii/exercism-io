class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
    @list = {}.tap { |hash| (2..limit).to_a.each { |n| hash[n] = true } }
  end

  def primes
    return []  if limit < 2

    (2..limit).to_a.each do |number|
      if number ** 2 < limit
        (number..(limit / number)).each do |j|
          @list[number * j] = false
        end
      end
    end
    
    @list.select { |_, value| value == true }.keys
  end
end
