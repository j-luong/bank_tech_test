class Transaction
  attr_reader :date, :type, :amount, :current_balance

  def initialize(type, amount, balance)
    @date = Time.now.strftime('%d/%m/%Y')
    @type = type
    @amount = amount
    @current_balance = balance
  end
end
