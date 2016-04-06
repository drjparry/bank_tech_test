class Bank

  attr_reader :balance

  def initialize
    @balance = 0

  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_balance
    print "Balance: #{self.balance}"
  end
end