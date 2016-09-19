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
  end

  def print_statement
    puts "date || debit || credit || balance"
    @transaction_log.each do |transaction|
      if transaction.type == :debit
        puts "#{transaction.date} || #{transaction.amount} ||  || #{transaction.current_balance}"
      else
        puts "#{transaction.date} ||  || #{transaction.amount} || #{transaction.current_balance}"
      end
    end
  end
end
