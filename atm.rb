require './bank_account.rb'

cmd = ""
account = BankAccount.new

puts "Welcome #{account.name}"

while cmd != "4" do
  puts "Select an option from the menu."
  puts %{
    1: Check Balance(w)ithdraw
    2: Withdraw Funds(d)eposit
    3: Deposit Funds(c)heck
    4: Cancel
  }
  cmd = gets.chomp

  case cmd
  when "1"
    puts "Your existing balance is $%.2f\n" % account.balance
  when "2"
    puts "What amount would you like to withdraw?"
      amount = gets.chomp.to_i
      account.withdraw(amount)
  when "3"
    puts "What amount would you like to deposit?"
      amount = gets.chomp.to_i
      account.deposit(amount)
  when "4"
    puts "Canceling transaction."
  else
    puts "Didn't understand your command. Try again." unless cmd == "4"
  end
end
