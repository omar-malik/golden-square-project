require "password_checker"

describe 'PasswordChecker' do
    context "given a password below 8 letters" do
        it "fails" do
            password_checker = PasswordChecker.new
            expect { password_checker.check("") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end

    context "given a password which is 8 letters" do
        it "returns true" do
            password_checker = PasswordChecker.new
            result = password_checker.check("qwertyuio")
            expect(result).to eq true
        end
    end

    context "given a password which is above 8 letters" do
        it "returns true" do
            password_checker = PasswordChecker.new
            result = password_checker.check("qwertyuiopqwer")
            expect(result).to eq true
        end
    end
end