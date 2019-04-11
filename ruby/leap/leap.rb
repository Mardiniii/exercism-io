class Year
  def self.leap?(year)
    return true if (year % 400).zero?
    return true if (year % 4).zero? && !(year % 100).zero?

    false
  end
end
