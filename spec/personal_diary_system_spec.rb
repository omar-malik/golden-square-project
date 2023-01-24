require 'personal_diary_system'

RSpec.describe "testing 'make_snippet' method" do
  it "returns first 5 words if string is < 5 words" do
  expect(make_snippet("Let's test it")).to eq "Let's test it"
  end

  it "returns first 5 words when string is == 5 words" do
    expect(make_snippet("hi, how are you today?")).to eq "hi, how are you today?"
  end

  it "returns first 5 words + '...' when string is > 5 words" do
    expect(make_snippet("Today is another day of the full time course and it's nice, 
    the skies are clear and blue.")).to eq "Today is another day of ..."
  end
end

RSpec.describe "testing 'count_words' method" do
  it "tests if the method will return the correct number of words" do
    expect(count_words("something cool")).to eq 2
  end
end

RSpec.describe "testing 'est_read_time' method" do

  context "when given a string under 200 words" do
    it "returns 1 minute" do
      expect(est_read_time("words " * 40)).to eq "1 minute"
    end
  end

  context "when given a text with 400 words" do
    it "returns 2 mins" do
      expect(est_read_time("words " * 400)).to eq "2 minutes"
    end
  end
end

RSpec.describe "testing 'check_grammar' method" do
  context "first letter is capitalizes && ends with a '.'" do
    it "returns true" do
      expect(check_grammar("Hello.")).to eq true
    end
  end

  context "first letter is not capitalized && ends with '.'" do
    it "returns false" do
      expect(check_grammar("hello.")).to eq false
    end
  end

  context "first letter not capitalized && doesn't end with '.'" do
    it "returns false" do
      expect(check_grammar("hello")).to eq false
    end
  end

  context "first letter capitalized && ends with '!'" do
    it "returns true" do
      expect(check_grammar("Hello!")).to eq true
    end
  end
end