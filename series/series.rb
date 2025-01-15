class Series
  def initialize(series)
    raise ArgumentError if series.empty?
    @series = series
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @series.length
    raise ArgumentError if slice_length < 1
    @series.chars.each_cons(slice_length).map(&:join)
  end
end