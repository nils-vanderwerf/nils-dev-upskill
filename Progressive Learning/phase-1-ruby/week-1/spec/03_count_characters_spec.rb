require_relative '../03_count_characters.rb'

describe "#count_characters" do
  context "when a regular string is entered" do
    it "returns a hash with a count of each character in the string. The key being the character and the value being the frequency count" do
      expect(count_chars("hello")).to eq({ "h" => 1, "e" => 1, "l" => 2, "o" => 1 })
    end
  end
  context "when a string with a space is entered" do
    it "ignores the space and returns non-empty characters" do
      expect(count_chars("a b")).to eq({ "a" => 1, "b" => 1 })
    end
  end
  context "when a string with multiple spaces is entered" do
    it "ignores the space and returns non-empty characters" do
      expect(count_chars("a    b")).to eq({ "a" => 1, "b" => 1 })
    end
  end
  context "an empty string is entered" do
    it "returns an empty hash" do
      expect(count_chars("")).to eq({})
    end
  end
end