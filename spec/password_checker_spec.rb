require "password_checker"

RSpec.describe PasswordChecker do
    it "returns true if password length is > 8" do
        password = PasswordChecker.new
        expect(password.check("123456789")).to eq true
    end

    it "returns true if password length is == 8" do
        password = PasswordChecker.new
        expect(password.check("12345678")).to eq true
    end

    it "fails when password length is < 8" do
        password = PasswordChecker.new
        expect { password.check("123") }.to raise_error "Invalid password, must be 8+ characters."
    end
end