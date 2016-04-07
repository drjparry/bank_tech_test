require 'deposit'

describe Deposit do
  subject(:deposit){described_class.new("06/04/2016", 50, 70)}
  it "has a date of creation" do
    expect(deposit.date).to eq "06/04/2016"
  end

  it "has a deposit amount" do
    expect(deposit.amount).to eq 50
  end

  it "shows the balance up until that point" do
    expect(deposit.account_balance).to eq 70
  end

  it "displays itself in viewing format" do
    expect(deposit.show).to eq "06/04/2016 || 50 || || 70\n"
  end
end