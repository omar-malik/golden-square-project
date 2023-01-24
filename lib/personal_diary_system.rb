def make_snippet(string)
  arr = string.split
  return arr.first(5).join(" ") + (arr.length > 5 ? " ..." : "")
end

def count_words(string)
  return string.split.count
end

def est_read_time(string)
  mins = ((string.split(" ").count).to_f / 200).ceil()
  if mins == 1
    return "#{mins} minute"
  else
    return "#{mins} minutes"
  end
end

def check_grammar(string)
  if string == string.capitalize && (string[-1] == "." || "!" || "?")
    return true
  else 
    return false
  end
end

def check_todo(string)
  if string.include? "#TODO"
    return true
  else
    return false
  end
end