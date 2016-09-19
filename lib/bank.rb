class Bank
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def print_menu
    puts "1. Check balance"
    puts "2. Deposit"
    puts "3. Withdraw"
    puts "4. Statement"
    puts "0. Exit"
  end

  def deposit_money(amount)
    raise "Invalid amount" if invalid_amount?(amount)
    @balance += amount
  end

  def withdraw_money(amount)
    raise "Insufficient funds" if insufficient_funds?(amount)
    @balance -= amount
  end

  private

  def insufficient_funds?(amount)
    @balance - amount < 0
  end

  def invalid_amount?(amount)
    amount <= 0
  end
end
