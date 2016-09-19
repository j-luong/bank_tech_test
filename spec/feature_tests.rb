require './lib/bank'

puts "\nbank = Bank.new"
p bank = Bank.new
puts "\nbank.deposit_money(1000)"
p bank.deposit_money(1000)
puts "\nbank.deposit_money(100)"
p bank.deposit_money(100)
puts "\nbank.deposit_money(10)"
p bank.deposit_money(10)
puts "\nbank.withdraw_money(500)"
p bank.withdraw_money(500)
puts "\nbank.withdraw_money(50)"
p bank.withdraw_money(50)
puts "\nbank.withdraw_money(5)"
p bank.withdraw_money(5)
puts "\nbank.print_statement"
p bank.print_statement
