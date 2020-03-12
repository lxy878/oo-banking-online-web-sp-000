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
    @sender.balance -= amount
    @receiver.balance += amount
    @status = "complete"
  end
end
