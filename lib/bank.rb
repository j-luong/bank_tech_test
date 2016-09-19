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
    @balance += amount
  end
end
