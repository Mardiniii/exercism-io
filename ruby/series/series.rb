class Series
  def initialize(string)
    @chars = string.chars
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @chars.size

    @chars.each_cons(slice_size).with_object([]) do
      |slice, array| array << slice.join
    end
  end
end
