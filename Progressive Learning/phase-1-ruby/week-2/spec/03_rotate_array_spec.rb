require_relative '../03_rotate_array.rb'

describe '#rotate_array' do
  context "when passed a mixed array of integers and an integer, n, to rotate by" do
    it "rotates by n positions" do
      expect(rotate_array([1, 2, 3, 4, 5], 2)).to eq([3, 4, 5, 1, 2])
    end
  end
  context "when the second argument is 0" do
    it "returns the array unchanged" do
      expect(rotate_array([1, 2, 3], 0)).to eq([1, 2, 3])
    end
  end
  context "when the second argument is the same length of the array passed in" do
    it "returns the array unchanged" do
      expect(rotate_array([1, 2, 3], 3)).to eq([1, 2, 3])
    end
  end
  context "when the array passed in is empty" do
    it "returns an empty array" do
      expect(rotate_array([], 2)).to eq([])
    end
  end
end