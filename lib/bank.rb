require_relative 'transactions_log'

class Bank
  attr_reader :balance

  def initialize
    @balance = 0
    @transaction_log = TransactionsLog.new
  end

  def deposit_money(amount)
    raise "Invalid amount" if invalid_amount?(amount)
    @balance += amount
    log_transaction(:debit, amount, @balance)
  end

  def withdraw_money(amount)
    raise "Insufficient funds" if insufficient_funds?(amount)
    @balance -= amount
    log_transaction(:credit, amount, @balance)
  end

  def print_statement
    @transaction_log.print_statement
  end

  private

  def insufficient_funds?(amount)
    @balance - amount < 0
  end

  def invalid_amount?(amount)
    amount <= 0
  end

  def log_transaction(type, amount, balance)
    @transaction_log.new_transaction(type, amount, balance)
    @transaction_log.log_transaction
  end
end
