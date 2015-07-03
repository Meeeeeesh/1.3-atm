class BankAccount
  attr_reader :name, :balance, :pin

  def initialize(name)
    @name = name
    @transactions = []
    @balance = 0.0
    @pin = ""
  end

  def show_balance
    puts "Your existing balance is $#{@balance}."
  end

  def withdraw(amount)
    puts "What amount would you like to withdraw?"
    @balance -= amount.to_f
    puts "$%.2f has been successfully withdrawn.\n" % amount
  end

  def deposit(amount)
    puts "What amount would you like to deposit? "
    @balance += amount.to_f
    puts "$%.2f has been successfully deposited.\n" % amount
  end
end

bank = BankAccount.new("existing_user")
bank.class

user = Atm.new({ name:....})
existing_user = [user1, user2]

selected_option = []
account = BankAccount.new("existing_user")
existing_user = [
  { name: "Tibby", 
    pin: "1234",
    available_funds: 2000 },
  { name: "Balls", 
    pin: "1111",
    available_funds: 2000 }
]

atm_available_funds = 5000

def prompt_user(text)
  puts text
  print ">> "
  gets.chomp
end

def prompt_and_chomp(text)
  input_text = ""
    while input_text == ""
      input_text = prompt_user(text)
    end
    input_text
end


existing_user = prompt_and_chomp("Welcome! To make it rain, enter your name:")
current_pin = prompt_and_chomp("Gimme dem digits, guh.")

user_exists = nil
existing_user.each do |user|
  if user[:name] == existing_user && user[:pin] == current_pin
    existing_user = user
  end
end

if existing_user
  options = [ '1: Check Balance', '2: Withdraw Funds', '3: Deposit Funds', '4: Cancel' ]
  options.each { |o| puts o }
  selected_option = nil
  until (1..options.length).include?(selected_option)
    selected_option = prompt_user(options.join("\n")).to_i
  end
  
  case selected_option
    when 1
      puts "Your existing balance is $%.2f\n" % account.balance
    when 2
      requested_amount = prompt_user("What amount would you like to withdraw?").to_i
      if requested_amount >= atm_available_funds
        put "Not enough in machine."
    when 3
      puts "What amount would you like to deposit?"
      amount = gets.chomp.to_i
      account.deposit(amount)
    when 4
      puts "Canceling transaction."
    else
      puts "Try again." unless cmd == "5"
    end
end