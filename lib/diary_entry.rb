class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
    @title = title
    @contents = contents
    @point_read = 0
  end

  def title
    # Returns the title as a string
    return @title
  end

  def contents
    return @contents
    # Returns the contents as a string
  end

  def count_words
    return @contents.split.count 
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    
    return (count_words / (wpm.to_f)).ceil
  end

  def reading_chunk(wpm, minutes) 
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
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