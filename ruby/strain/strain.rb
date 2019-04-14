class Array
  def keep
    return to_enum :keep unless block_given?
    each_with_object([]) { |e, out| out << e if yield(e) }
  end

  def discard
    return to_enum :keep unless block_given?
    each_with_object([]) { |e, out| out << e unless yield(e) }
  end
end
