require "gratitudes"

RSpec.describe Gratitudes do
  it "should return list of gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("Terry")
    gratitudes.add("Omar")
    expect(gratitudes.format).to eq "Be grateful for: Terry, Omar"
  end
end 