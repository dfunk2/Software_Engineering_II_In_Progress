class Account 
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
  def increase(amount)
    @balance += amount
  end
  def decrease_balance(amount)
    @balance -= amount
  end

end

class Foo
  def initialize(account)
    @account = account
  end

  def increase_balance(account)
    account.increase(1)
  end
end

class Bar
  def initialize(account)
    @account = account
  end
  def decrease_balance(account)
    account.decrease(1)
  end
end

def yay(account, n)
  account.increase(n)
end

def hey_wait(account, n)
  account.decrease(n)
end

#all the methods are dependent on my_real_life_account_balance which is no bueno.
#We must create a class for balance and then dependency inject these functions with the object
#when we add 300 new functions that use the object balance we dont need to change the actual functions
new_account = Account.new(100)
new_account.increase_balance
new_account.hey_wait(50)
