class BankAccount
  attr_accessor :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  def deposit(number)
    @balance += number
  end
  def display_balance
    @balance
  end
end
