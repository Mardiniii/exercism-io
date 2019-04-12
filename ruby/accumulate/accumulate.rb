class Array
  def accumulate
    out = []
    if block_given?
      each { |e| out << yield(e) }
    else
      out = to_enum :accumulate
    end

    out
  end
end
