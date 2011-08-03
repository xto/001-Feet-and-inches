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
end