require 'present'

RSpec.describe Present do
  context "already wrapped contents." do
    it "fails" do
        present = Present.new()
        present.wrap("h")
        expect { present.wrap("s") }.to raise_error "A contents has already been wrapped."
    end
  end
end