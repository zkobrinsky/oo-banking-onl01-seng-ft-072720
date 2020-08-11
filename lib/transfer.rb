require "pry"

class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  @@all = []

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def sender
    @sender
  end

  def receiver
    @receiver
  end

  def valid?
    @receiver.valid? && @sender.valid?
  end

  def execute_transaction
    # binding.pry
    if valid? && !@@all.include? (self)
      sender.balance-=amount
      receiver.balance+=amount
      self.status = "complete"
    else
      "Error"
    end
  end

end
