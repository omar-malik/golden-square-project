require "check_codeword"

RSpec.describe "codeword method" do
  it "checks the codeword" do
    result = "horse"
    expect(check_codeword(result)).to eq "Correct! Come in." 
  end

  it "should return 'Close, but nope.' when the input 'hope'" do
    result = "hope"
    expect(check_codeword(result)).to eq 'Close, but nope.'
  end

  it "should return 'WRONG!' when the input is 'Omar'" do
    result = "Omar"
    expect(check_codeword(result)).to eq 'WRONG!'
  end
end