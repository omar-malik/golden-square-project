class Gratitudes
  def initialize
    @gratitudes =[]
  end

  def add(gratitudes)
    @gratitudes.push(gratitudes)
  end

  def format
    formatted = "Be grateful for: "
    formatted += @gratitudes.join(", ")
    return formatted
  end
end