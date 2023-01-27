require "grammar_stats"

RSpec.describe GrammarStats do
  context "testing check method" do
    it "begins with capital letter and ends with full stop" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Hello.")).to eq true
    end

    it "begins with capital letter and ends with exclamation" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Hello!")).to eq true
    end

    it "begins with lower case and ends with full stop" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("hello.")).to eq false
    end

    it "begins with lower case and ends with exclamation" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("hello!")).to eq false
    end
  end

  context "percentage of texts that return true" do
    
    it "tells us that 100% of the texts have passed" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello!")
      expect(grammar_stats.percentage_good).to eq 100
    end
    
    it "says 50% of texts passed" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello!")
      grammar_stats.check("hello.")
      expect(grammar_stats.percentage_good).to eq 50
    end
  end

end