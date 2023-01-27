class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
    @title = title
    @contents = contents
    @point_read = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split.count 
  end

  def reading_time(wpm) 
    return (count_words / (wpm.to_f)).ceil
  end

  def reading_chunk(wpm, minutes) 
    words_we_can_read = wpm * minutes
    start_from = @point_read
    end_at = @point_read + words_we_can_read
    word_chunk = words[start_from, end_at] 
    if (@point_read + words_we_can_read) >= count_words
      @point_read = 0
    else 
      @point_read = end_at
    end
    return word_chunk.join(" ")
  end
end

private

def words
  return @contents.split(" ")
end