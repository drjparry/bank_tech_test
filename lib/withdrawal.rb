class Withdrawal

attr_reader :date, :amount, :account_balance

  def initialize(date, amount, account_balance)
    @date = date
    @amount = amount
    @account_balance = account_balance
  end

  def show
    "#{self.date} || || #{self.amount} || #{self.account_balance}\n"
  end
end