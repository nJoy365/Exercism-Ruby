class AssemblyLine
  PRODUCTION_RATE_PER_HOUR = 221
  def initialize(speed)
    @speed = speed
    if @speed >= 1 && @speed <= 4
      @chances = 100
    elsif @speed >= 5 && @speed <= 8
      @chances = 90
    elsif @speed == 9
      @chances = 80
    elsif @speed == 10
      @chances = 77
    end
  end

  def production_rate_per_hour
    ((@chances * (@speed * PRODUCTION_RATE_PER_HOUR))/100.0)
  end

  def working_items_per_minute
    ((@chances * (@speed * PRODUCTION_RATE_PER_HOUR))/100) / 60
  end
end
