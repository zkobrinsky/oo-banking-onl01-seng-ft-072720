class Transfer
  attr_accessor :to, :from, :amount

  def initialize(to, from, amount)
    @to = to
    @from = from
    @amount = amount
  end
  
end
