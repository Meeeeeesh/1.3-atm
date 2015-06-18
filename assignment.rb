class Bank
  attr_reader :name, :balance

  def initialize(name)
    @name = name
    @transactions = []
    @balance = 0.0
  end

  def withdraw(amount)
    puts "What amount would you like to withdraw?"
    puts "$#{amount} has been successfully withdrawn." 
  end
  
  def deposit(amount)
    puts "What amount would you like to deposit? "
    puts "$#{amount} has been sucessfully deposited."
  end

  def show_balance
    puts "Your existing balance is $#{@balance}."
  end
end

bank = Bank.new("User id")
bank.class

puts "Welcome! To make it rain, enter your name:"

cmd = []
account = Bank.new("user_id")
user_id = []
name = user_id
pin = []

new_name = gets.chomp
print ">> "
puts "Gimme dem digits, guh."
new_pin = gets.chomp
print ">> "

puts "Select an option from the menu."
  puts %{
    1: Check Balance
    2: Withdraw Funds
    3: Deposit Funds
    4: Cancel
  }
  puts ">> "
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
      puts "Try again." unless cmd == "4"
    end
