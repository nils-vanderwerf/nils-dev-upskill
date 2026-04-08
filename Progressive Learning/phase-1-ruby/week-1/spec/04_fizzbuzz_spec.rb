require_relative '../04_fizzbuzz.rb'

describe "#fizzbuzz" do
  context "given an integer n" do
    it "returns an array of strings for multiples of 3, 5 or both" do
      expect(fizzbuzz(3)).to eq(["1", "2", "Fizz"])
    end
    it "returns an array of strings for multiples of 5" do
      expect(fizzbuzz(5)).to eq(["1", "2", "Fizz", "4", "Buzz"])
    end
    it "returns an array of only 1 element, '1', when 1 is entered as an argument" do
      expect(fizzbuzz(1)).to eq(["1"])
    end
    it "returns an array of strings for multiples of both 3 and 5" do
      expect(fizzbuzz(15)).to eq(
         ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "Fizzbuzz"]
      )
    end
  end
end