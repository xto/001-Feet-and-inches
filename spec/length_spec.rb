require_relative "spec_helper"
describe Length do
  describe "inches" do

    it "should return the number of whole inches" do
      Length.new(1.0).inches.should be_eql(1)
      Length.new(12.0).inches.should be_eql(0)
    end
  end
  describe "feet" do
    it "should return the number of whole feet" do
      Length.new(12.0).feet.should be_eql(1)
      Length.new(24.0).feet.should be_eql(2)
      Length.new(11.0).feet.should be_eql(0)
    end
  end

  describe "thirty_seconds_of_an_inch" do
    it "should return the number of whole 32nds on an inch" do
      Length.new(0.03125).thirty_seconds_of_an_inch.should be_eql(1)
      Length.new(1).thirty_seconds_of_an_inch.should be_eql(0)
      Length.new(1.03125).thirty_seconds_of_an_inch.should be_eql(1)
    end
  end

  describe "String representation" do
    it "should convert 1 to 1 inch" do
      Length.new(1).to_s.should ==("1 inch")
    end

    it "should convert 2 to 2 inches" do
      Length.new(2).to_s.should == ("2 inches")
    end

    it "should convert 12 inches to 1 foot" do
      Length.new(12).to_s.should == ("1 foot")
    end

    it "should convert 0.03125 to 1/32 of an inch" do
      Length.new(0.03125).to_s.should == ("1/32 of an inch")
    end

    it "should convert 73.0185 to 6 feet, 1 inch, 1/32 of an inch" do
      Length.new(73.03125).to_s.should == ("6 feet, 1 inch, 1/32 of an inch")
    end

    it "should convert 0.0625 to 1/16 of an inch" do
      Length.new(0.0625).to_s.should == ("1/16 of an inch")
    end

    it "should convert 0.125 to 1/8th of an inch" do
      Length.new(0.125).to_s.should == ("1/8 of an inch")
    end

    it "should convert 0.25 to 1/4th of an inch" do
      Length.new(0.25).to_s.should == ("1/4 of an inch")
    end

    it "should convert 0.5 to 1/2 of an inch" do
      Length.new(0.5).to_s.should == ("1/2 of an inch")
    end
  end


end