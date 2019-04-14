class Array
  def keep
    return [] if size.zero?
    return to_enum :keep unless block_given?

    out = []
    each { |e| out << e if yield(e) }
    out
  end

  def discard
    self - keep { |e| yield(e) }
  end
end
