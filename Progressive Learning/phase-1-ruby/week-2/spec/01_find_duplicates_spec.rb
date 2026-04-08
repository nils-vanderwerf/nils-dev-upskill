require_relative '../01_find_duplicates.rb'

describe '#find_duplicates' do
  context "when array contains a mix of unique and duplicate values" do
    it "returns an array of only the duplicate values, with each of them appearing only once" do
      expect(find_duplicates([1, 2, 3, 2, 4, 3])).to eq([2, 3])
    end
  end

  context "when array contains only unique values" do
    it "returns an empty array" do
      expect(find_duplicates([1, 2, 3])).to eq([])
    end
  end

  context "when array is empty" do
    it "returns an empty array" do
       expect(find_duplicates([])).to eq([])
    end
  end

  context "when array contains duplicates only" do
    it "returns each duplicate value once" do
      expect(find_duplicates([5, 5, 5])).to eq([5])
    end
  end
end