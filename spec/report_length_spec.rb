require "report_length"

RSpec.describe "check report_length method" do
  it "should return 4 when input is 'Omar'" do
    expect(report_length("Omar")).to eq "This string was 4 characters long"
  end
end