class LengthConverter
  def initialize
    @length = nil
    @output_string = ""
  end



  def convert_to_string(decimal_length)
    @length=Length.new(decimal_length)

    feet_to_string!
    inches_to_string!
    thirty_seconds_of_an_inch_to_string!
    @output_string
  end
end