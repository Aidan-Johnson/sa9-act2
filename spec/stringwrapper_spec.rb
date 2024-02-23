require "stringwrapper"

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      string1 = StringWrapper.new("test string")
      string1 = string1.reverse
      expect(string1).to eq('gnirts tset')
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      string2 = StringWrapper.new("test string")
      string2 = string2.upcase
      expect(string2).to eq('TEST STRING')
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      string3 = StringWrapper.new("TEST sTrInG")
      string3 = string3.downcase
      expect(string3).to eq('test string')
    end
  end
end
