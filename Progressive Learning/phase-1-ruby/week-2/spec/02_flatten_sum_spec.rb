require_relative '../02_flatten_sum.rb'

describe '#flatten_sum' do
  context "when passed a number of nested array elements" do
    it "sums up the integers no matter how deeply nested they are" do
      expect(flatten_sum([1, [2, 3], [4, [5]]])).to eq(15)
    end
  end
  context "when passed a flat array" do
    it "sums up the integers" do
      expect(flatten_sum([1, 2, 3])).to eq(6)
    end
  end
  context "when passed a flat empty array" do
    it "returns 0" do
      expect(flatten_sum([])).to eq(0)
    end
  end
  context "when passed a nested empty array" do
    it "returns 0" do
      expect(flatten_sum([[[[]]]])).to eq(0)
    end
  end
end