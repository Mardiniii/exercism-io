class Matrix
  attr_reader :rows

  def initialize(string)
    @rows = string.lines.map { |row| row.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
