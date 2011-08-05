class LengthConverter
  def self.convert_to_string(decimal_length, metric)
    eval("#{metric.to_s.capitalize}.new(#{decimal_length}).to_s")
  end
end