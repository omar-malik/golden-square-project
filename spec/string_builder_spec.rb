require "string_builder"

describe StringBuilder do
  before(:each) do
    @string_builder = StringBuilder.new
    @string_builder.add("Omar")
  end

  it "should return length of the string" do
    expect(@string_builder.size).to eq 4
  end

  it "should return the string" do
    expect(@string_builder.output).to eq "Omar"
  end
end