require_relative 'transactions'

class TransactionsLog
  attr_reader :transaction_log

  def initialize(type, balance)
    @transaction = Transactions.new(type, balance)
    @transaction_log = []
  end

  def log_transaction
    @transaction_log << @transaction
  end
end
