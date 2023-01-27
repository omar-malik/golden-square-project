class GrammarStats
  def initialize
    @true_count = 0
    @text_count = 0
  end

  def check(text) 
    if text == text.capitalize && (text[-1] == "." || "!" || "?")
      @true_count += 1
      @text_count += 1
      return true
    else 
      @text_count += 1
      return false
    end
    
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    return ((@true_count.to_f / @text_count) * 100)
  end

end

