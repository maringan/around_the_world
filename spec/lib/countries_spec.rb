require_relative "../spec_helper"

describe Countries do
  it "should return correct country full name" do
    Countries.get_name_by_code("PL\r\n").should == "Poland\r\n"
  end
end