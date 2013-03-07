require_relative "../spec_helper"

describe Countries do
  context "Find country name by code" do
    it "should return correct full country name" do
      Countries.get_name_by_code("PL\r\n").should == "Poland\r\n"
    end

    it "should return 'Not found' when key is incorrect" do
      Countries.get_name_by_code("MagickKey\r\n").should == "Not found\r\n"
    end
  end
end