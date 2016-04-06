require 'Bank'

describe Bank do
  subject(:bank){described_class.new}

  it "has a balance fo zero by default" do
    expect(bank.balance).to eq 0
  end

  it "allows a user to deposit money in the account" do
    bank.deposit(50)
    expect(bank.balance).to eq 50
  end
end