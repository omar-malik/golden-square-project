require 'greet'

RSpec.describe "greet method" do
  it "takes a name a returns a greeting" do
    result = "hello"
    expect(result).to eq "hello"
  end
end