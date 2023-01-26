require 'diary_entry'

RSpec.describe DiaryEntry do
  diary_entry = DiaryEntry.new("title", "here is some contents")
  context "initialize method" do
    it "constructs new object" do
      
      expect(diary_entry.title).to eq "title"
      expect(diary_entry.contents).to eq "here is some contents"
    end
  end

  context "count_words method" do
    it "returns the number of words in the string" do
      
      expect(diary_entry.count_words).to eq 4
    end
  end
end

RSpec.describe DiaryEntry do
  context "reading_time method: when contents is 500 words, and wpm is 100" do
    it "returns 5" do
    diary_entry = DiaryEntry.new("title", "word " * 500)
    expect(diary_entry.reading_time(100)).to eq 5
    end
  end

  context "when contents is 500 words and wpm is 600 words" do
    it "returns 1" do
      diary_entry = DiaryEntry.new("title", "word " * 500)
      expect(diary_entry.reading_time(600)).to eq 1
    end
  end
end

RSpec.describe DiaryEntry do
  context "reading_chunk method" do
    it "returns whole text when there is enough time" do
      diary_entry = DiaryEntry.new("title", "words " * 10)
      expect(diary_entry.reading_chunk(1, 10)).to eq ("words " * 10).split.join(" ")
    end
  end

  context "when wpm < word count, text is returned in readable chunks" do
    it "returns the first chunk" do
      diary_entry = DiaryEntry.new("title", "words " * 10)
      expect(diary_entry.reading_chunk(2, 2)).to eq ("words " * 4).split.join(" ")
    end

    it "returns first chunk again once last chunk was called" do
      diary_entry = DiaryEntry.new("title", "a b c d e f g h i j ")
      diary_entry.reading_chunk(2, 2)
      diary_entry.reading_chunk(2, 2)
      diary_entry.reading_chunk(2, 2)
      expect(diary_entry.reading_chunk(2, 2)).to eq ("a b c d")
    end
  end
end