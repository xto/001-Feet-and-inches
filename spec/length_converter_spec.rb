require_relative "spec_helper"

describe "LengthConverter" do
  describe "Inches" do 
    it "should convert 1 to 1 inch" do
      LengthConverter::convert_to_string(1,:inch).to_s.should ==("1 inch")
    end

    it "should convert 2 to 2 inches" do
      LengthConverter::convert_to_string(2,:inch).to_s.should == ("2 inches")
    end

    it "should convert 12 inches to 1 foot" do
      LengthConverter::convert_to_string(12,:inch).to_s.should == ("1 foot")
    end

    it "should convert 0.03125 to 1/32 of an inch" do
      LengthConverter::convert_to_string(0.03125,:inch).to_s.should == ("1/32 of an inch")
    end

    it "should convert 73.0185 to 6 feet, 1 inch, 1/32 of an inch" do
      LengthConverter::convert_to_string(73.03125,:inch).to_s.should == ("6 feet, 1 inch, 1/32 of an inch")
    end

    it "should convert 0.0625 to 1/16 of an inch" do
      LengthConverter::convert_to_string(0.0625,:inch).to_s.should == ("1/16 of an inch")
    end

    it "should convert 0.125 to 1/8th of an inch" do
      LengthConverter::convert_to_string(0.125,:inch).to_s.should == ("1/8 of an inch")
    end

    it "should convert 0.25 to 1/4th of an inch" do
      LengthConverter::convert_to_string(0.25,:inch).to_s.should == ("1/4 of an inch")
    end

    it "should convert 0.5 to 1/2 of an inch" do
      LengthConverter::convert_to_string(0.5,:inch).to_s.should == ("1/2 of an inch")
    end
  end
end