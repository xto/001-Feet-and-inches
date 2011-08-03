class Length
  def initialize(decimal)
    @decimal = decimal
  end

  def inches
    (@decimal % 12).floor
  end

  def feet
    (@decimal / 12).floor
  end

  def thirty_seconds_of_an_inch
    (@decimal.divmod(1)[1] * 32).floor
  end
end