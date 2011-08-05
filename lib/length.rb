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

  def to_s
    "#{feet_to_string!}#{inches_to_string!}#{thirty_seconds_of_an_inch_to_string!}"
  end

  private

  def inches_to_string!

    if inches == 1
      "#{add_spacing  unless feet == 0}#{inches} inch"
    elsif inches > 1
      "#{add_spacing  unless feet == 0}#{inches} inches"
    end
  end


  def feet_to_string!
    unless feet == 0
      if feet == 1
        "#{feet} foot"
      elsif feet > 1
        "#{feet} feet"
      end
    end
  end

  def simplify(modulo_divider)
    if thirty_seconds_of_an_inch % modulo_divider == 0
      "#{thirty_seconds_of_an_inch/modulo_divider}/#{32/modulo_divider} of an inch"
    else
      simplify(modulo_divider/2)
    end
  end

  def thirty_seconds_of_an_inch_to_string!
    unless thirty_seconds_of_an_inch == 0
      "#{add_spacing unless feet == 0 && inches == 0}#{simplify(16)}"
    end
  end

  def add_spacing
    ", "
  end
end