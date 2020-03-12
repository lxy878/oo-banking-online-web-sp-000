class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? and @receiver.valid?
  end

  def execute_transaction
    if status == "pending"
      if sender.balance > amount
        @sender.balance -= amount
        @receiver.balance += amount
        @status = "complete"
      else
        @status = "rejected"
        puts "Transaction rejected. Please check your account balance."
      end
    end
  end
end
