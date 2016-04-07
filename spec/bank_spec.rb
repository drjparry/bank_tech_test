require 'Bank'

describe Bank do
  subject(:bank){described_class.new}
  let(:deposit){double(:deposit, :show => "06/04/2016 || 50 || || 70\n" )}
  let(:withdrawal){double(:withdrawal, :show => "06/04/2016 || || 30 || 70\n")}

  it "has a balance fo zero by default" do
    expect(bank.balance).to eq 0
  end

  it "allows a user to make a deposit" do
    bank.deposit(50)
    expect(bank.balance).to eq 50
  end

  it "allows a user to make a withdrawal" do
    bank.deposit(50)
    bank.withdraw(30)
    expect(bank.balance).to eq 20
  end

  it "allows a user to print their statement ascending" do
    bank.deposit(50)
    bank.withdraw(30)
    show_balance = "date || credit || debit || balance\n 06/04/2016 || 50 || || 50\n06/04/2016 || || 30 || 20\n"
    expect{bank.print_statement("ascending")}.to output(show_balance).to_stdout
  end

  it "allows a user to print their statement descending" do
    bank.withdraw(30)
    bank.deposit(50)
    show_balance = "date || credit || debit || balance\n 06/04/2016 || || 30 || -30\n06/04/2016 || 50 || || 20\n"
    expect{bank.print_statement("descending")}.to output(show_balance).to_stdout
  end

end