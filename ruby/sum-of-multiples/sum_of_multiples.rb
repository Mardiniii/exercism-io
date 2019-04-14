require 'byebug'
class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(number)
    0.upto(number - 1).select { |n| multiple?(n) }.inject(0) { |sum, e| sum += e }
  end

  private

    def multiple?(number)
      @multiples.any? { |m| m.zero? ? 0 : number % m == 0 }
    end
end
