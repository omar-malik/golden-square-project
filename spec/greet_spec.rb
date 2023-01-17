require 'greet'

RSpec.describe "greet method" do
  it "takes a name a returns a greeting" do
    result = greet("Omar")
    expect(result).to eq "Hello, Omar"
  end
end 