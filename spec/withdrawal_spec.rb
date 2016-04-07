require 'withdrawal'

describe Withdrawal do
  subject(:withdrawal){described_class.new("06/04/2016", 50, 70)}
  it "has a date of creation" do
    expect(withdrawal.date).to eq "06/04/2016"
  end

  it "has a withdrawal amount" do
    expect(withdrawal.amount).to eq 50
  end

  it "shows the balance up until that point" do
    expect(withdrawal.account_balance).to eq 70
  end

  it "displays itself in viewing format" do
    expect(withdrawal.show).to eq "06/04/2016 || || 50 || 70\n"
  end
end