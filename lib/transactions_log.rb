require_relative 'transaction'

class TransactionsLog
  attr_reader :transaction_log

  def initialize
    @transaction_log = []
  end

  def new_transaction(type, amount, balance)
    @transaction = Transaction.new(type, amount, balance)
  end

  def log_transaction
    @transaction_log << @transaction
    "Transaction complete"
  end

  def print_statement
    print_header
    print_transactions
  end

  private

  def print_header
    puts "date || debit || credit || balance"
  end

  def print_transactions
    @transaction_log.each do |transaction|
      if transaction.type == :debit
        puts "#{transaction.date} || #{transaction.amount} ||  || #{transaction.current_balance}"
      else
        puts "#{transaction.date} ||  || #{transaction.amount} || #{transaction.current_balance}"
      end
    end
    "Transaction history"
  end
end
