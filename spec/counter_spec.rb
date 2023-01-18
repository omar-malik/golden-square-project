require "counter"

RSpec.describe Counter do
  it "should have counted to 7 so far" do
    counter = Counter.new
    counter.add(7)
    expect(counter.report).to eq "Counted to 7 so far"
  end
end