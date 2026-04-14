require_relative '../01_word_count'

describe '#word_count' do
  context 'A string sentence without punctuation is passed into the method' do
    it 'returns a hash with a count of each word in that sentence' do
      expect(word_count("the cat sat on the mat")).to eq({"the"=>2, "cat"=>1, "sat"=>1, "on"=>1, "mat"=>1})
    end
  end

  context 'when input is a single word' do
    it 'returns a hash with the word and frequency' do
      expect(word_count("hello")).to eq({"hello" => 1})
    end
  end

  context 'when input is only punctuation' do
    it 'returns a an empty hash' do
      expect(word_count("???")).to eq({})
    end
  end

  context 'when input has a trailing apostrophe' do
    it 'drops it and only includes the word in the count' do
      expect(word_count("dogs'")).to eq({"dogs" => 1})
    end
  end

  context 'input is alphanumeric' do
    it 'recognises as a single word' do
      expect(word_count("catch22")).to eq({"catch22" => 1})
    end
  end

  context 'input includes a newlin or tab' do
    it 'ignores them and includes surrounding words' do
      expect(word_count("hello\nworld")).to eq({"hello" => 1, "world" => 1})
    end
  end

  context 'the sentence includes duplicate words and punctuation' do
    it 'groups those words into a singular key and a count for regularity of that word, stripping punctuation' do
      expect(word_count("Hello, hello!")).to eq({"hello"=>2})
    end
  end

  context 'an empty string is entered' do
    it 'returns an empty hash' do
      expect(word_count("")).to eq({})
    end
  end

  context 'sentence with punctuation entered' do
    it 'registers as one word for apostrophes' do
      expect(word_count("it's its")).to eq({"it's" => 1, "its" => 1})
    end
    it 'registers as one word for hyphens' do
      expect(word_count("well-known well")).to eq({"well-known" => 1, "well" => 1})
    end
  end
  context 'when the string includes a number' do
    it 'registers the number as its own string' do
      expect(word_count("3 dogs 3 cats")).to eq({"3"=> 2, "dogs" => 1, "cats" => 1})
    end
  end
  context 'when input has the same word with mixed case' do
    it 'case is ignored' do
      expect(word_count("THE the The ThE")).to eq({"the" => 4})
    end
  end
    context 'when input is a single character edge case' do
    it 'edge-case is split as into key-value' do
      expect(word_count("a a b")).to eq({"a" => 2, "b" => 1})
    end
  end
end