require_relative 'transactions_log'

class Bank
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit_money(amount)
    raise "Invalid amount" if invalid_amount?(amount)
    @balance += amount
    log_transaction({debit: amount}, @balance)
  end

  def withdraw_money(amount)
    raise "Insufficient funds" if insufficient_funds?(amount)
    @balance -= amount
    log_transaction({credit: amount}, @balance)
  end

  private

  def insufficient_funds?(amount)
    @balance - amount < 0
  end

  def invalid_amount?(amount)
    amount <= 0
  end

  def log_transaction(type, balance)
    @transaction_log = TransactionsLog.new(type, balance)
    @transaction_log.log_transaction
  end
end
