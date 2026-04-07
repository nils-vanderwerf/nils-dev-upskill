require_relative '../02_palindrome_check.rb'

describe "#palindrome?" do
  context "when a string which is is a palindrome is entered" do
    it "returns true" do
      expect(palindrome?("racecar")).to be true
    end
  end
  context "when a string which is a palindrome when case isn't considered is entered" do
    it "returns true" do
      expect(palindrome?("Racecar")).to be true
    end
  end
  context "when a string which is not a palindrome is entered" do
    it "returns false" do
      expect(palindrome?("banana")).to be false
    end
  end
  context "when an empty string is entered" do
    it "returns true" do
      expect(palindrome?("")).to be true
    end
  end
end