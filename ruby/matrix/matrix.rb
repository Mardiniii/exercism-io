class Matrix
  def initialize(string)
    @matrix = string.
        split("\n").
        map{ |row| row.split(" ").map(&:to_i) }
  end

  def rows
    @matrix
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
