class LengthConverter
  def initialize
    @length = nil
    @output_string = ""
  end

  def inches_to_string!
    add_spacing   unless @length.inches == 0
    if @length.inches == 1
      @output_string << "#{@length.inches} inch"
    elsif @length.inches > 1
      @output_string << "#{@length.inches} inches"
    end
  end


  def feet_to_string!
    unless @length.feet == 0
      if @length.feet == 1
        @output_string << "#{@length.feet} foot"
      elsif @length.feet > 1
        @output_string << "#{@length.feet} feet"
      end
    end
  end

  def simplify
    if @length.thirty_seconds_of_an_inch % 16 == 0
      "#{@length.thirty_seconds_of_an_inch/16}/2 of an inch"
    elsif @length.thirty_seconds_of_an_inch % 8 == 0
      "#{@length.thirty_seconds_of_an_inch/8}/4 of an inch"
    elsif @length.thirty_seconds_of_an_inch % 4 == 0
      "#{@length.thirty_seconds_of_an_inch/4}/8 of an inch"
    elsif @length.thirty_seconds_of_an_inch % 2 == 0
      "#{@length.thirty_seconds_of_an_inch/2}/16 of an inch"
    else
      "#{@length.thirty_seconds_of_an_inch}/32 of an inch"
    end
  end

  def thirty_seconds_of_an_inch_to_string!
    unless @length.thirty_seconds_of_an_inch == 0
      add_spacing
      @output_string << simplify()
    end
  end

  def convert_to_string(decimal_length)
    @length=Length.new(decimal_length)

    feet_to_string!
    inches_to_string!
    thirty_seconds_of_an_inch_to_string!
    @output_string
  end

  def add_spacing
    @output_string << ", " unless @output_string.empty?
  end
end