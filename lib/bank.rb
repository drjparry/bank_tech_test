require_relative 'deposit.rb'
require_relative 'withdrawal.rb'
require 'time'

class Bank
  attr_reader :balance, :history


  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @balance += amount
    @history << Deposit.new(time, amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @history << Withdrawal.new(time, amount, @balance)
  end

  def print_statement(type)
    print "date || credit || debit || balance\n#{display_history(type)}"
  end

  private

  def time
    @time = Time.new.strftime("%d/%m/%Y")
  end

  def display_history(type)
    return @history.map(&:show).join if type == "ascending"
    return @history.reverse.map(&:show).join if type == "descending"
  end
end