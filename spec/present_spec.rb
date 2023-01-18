require 'present'

RSpec.describe Present do
  it "wraps and unwraps value" do
    present = Present.new
    present.wrap("something")
    expect(present.unwrap).to eq "something"
  end

  it "fails unwrap without wrapping first" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end

  it "fails when trying to wrap already wrapped present" do
    present = Present.new
    present.wrap("something")
    expect { present.wrap("another thing") }.to raise_error "A contents has already been wrapped."
  end
end