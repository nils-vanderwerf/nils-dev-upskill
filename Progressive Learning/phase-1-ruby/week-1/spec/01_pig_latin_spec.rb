require_relative '../01_pig_latin'


describe '#pig_latin' do
  context 'word starts with a vowel' do
    it 'appends ay' do
      expect(pig_latin("earth")).to eq("earthay")
    end
  end

  context 'word starts with one or more consonants' do
    it 'moves all consonants before the first vowel to the end and appends ay' do
      expect(pig_latin("crumb")).to eq("umbcray")
    end
  end

  context 'word has multiple leading consonants' do
    it 'adds all consonants to the end before adding ay' do
      expect(pig_latin("school")).to eq("oolschay")
    end
  end

   context 'word has no vowels' do
    it 'moves the first consonant to the end and appends ay' do
      expect(pig_latin("crwth")).to eq("rwthcay")
    end
  end

    context 'string has two words or more' do
    it 'applies pig latin to each word' do
      expect(pig_latin("hello world")).to eq("ellohay orldway")
    end
  end
  context 'string starts with a capital' do
    it 'keeps the capital in the same position at the start of the string and downcases the moved starting letter' do
      expect(pig_latin("Hello world")).to eq("Ellohay orldway")
    end
  end
  context 'string starts with a capital vowel' do
    it 'keeps the capital vowel in the same position' do
      expect(pig_latin("Apple")).to eq("Appleay")
    end
  end
  context 'string starts with a capital Y' do
    it 'treats the y as a consonant, moving it to the end of the word and adding "ay"' do
      expect(pig_latin("Yellow")).to eq("Ellowyay")
    end
  end
  context 'single vowel string' do
    it 'keeps itself and adds ay' do
      expect(pig_latin("A")).to eq("Aay")
    end
  end
  context 'single consonant string' do
    it 'moves the Y and ay' do
      expect(pig_latin("Y")).to eq("Yay")
    end
  end
  context 'empty string entered' do
    it 'adds ay and does not break' do
      expect(pig_latin("")).to eq("")
    end
  end
end