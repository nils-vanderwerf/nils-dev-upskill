require_relative '../04_group_by_length.rb'

describe '#group_by_length' do
  context 'when given an array of strings' do
    it 'groups words into arrays keyed by their length' do
      expect(
        group_by_length(["cat", "dog", "elephant", "ant", "ox"])
      ).to eq(
        { 3 => ["cat", "dog", "ant"], 8 => ["elephant"], 2 => ["ox"] }
      )
    end
  end
  context 'when given an empty array' do
    it 'returns an empty hash' do
      expect( group_by_length([]) ).to eq({})
    end
  end
end