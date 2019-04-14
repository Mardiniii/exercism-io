class Matrix
  attr_reader :rows

  def initialize(string)
    @rows = string.lines.map { |row| row.split(" ").map(&:to_i) }
  end

  def columns
    transpose = []
    cols = rows.first.size

    cols.times.with_index do |index|
      row = rows.map { |row| row[index] }
      transpose.push(row)
    end

    transpose
  end
end
