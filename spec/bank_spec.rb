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

  it "allows a user to display their balance" do
    balance = 'Balance: 0'
    expect{bank.print_balance}.to output(balance).to_stdout
  end

  it 'allows a user to withdraw money from their balance' do
    bank.deposit(50)
    bank.withdraw(30)
    expect(bank.balance).to eq 20
  end
end