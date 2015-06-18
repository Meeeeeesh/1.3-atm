class Bank
  attr_reader :name, :balance

  def initialize(name)
    @name = name
    @transactions = []
    @balance = 0.0
  end

  def withdraw(amount)
    puts "What amount would you like to withdraw?"
    self.available_funds -= amount
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

bank = Bank.new("existing_user")
bank.class

user = User.new({ name:....})
existing_user = [user1, user2]



selected_option = []
account = Bank.new("existing_user")
existing_user = [
  { name: "Hitler", 
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

# class Bank

#   def initialize(accounts)
#     @accounts = accounts
#   end

#   def account_from(name, pin)
#     user_id = @accounts[name]
#     return user_id[:account] if user_id[:user_id].verify_pin?(pin)
#   end
# end

# class User_id

#   attr_reader :first_name, :last_name

#   def initialize(first_name, last_name, pin)
#     @first_name, @last_name = first_name, last_name
#     @pin = pin
#   end

#   def name
#     "#{@first_name} #{@last_name}"
#   end

#   def verify_pin?(pin)
#     pin == @pin
#   end
# end