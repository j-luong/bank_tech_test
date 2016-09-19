class Transactions
  attr_reader :date, :transaction, :current_balance

  def initialize(type, balance)
    @date = DateTime.now.strftime('%d/%m/%Y')
    @transaction = type
    @current_balance = balance
  end
end
