class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status 
  
  def initialize (sender,receiver,amount)
    @sender = sender 
    @receiver = receiver 
    @status = "pending"
    @amount = amount 
  end 
  
  def valid?
    if sender.valid? && receiver.valid?
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction 
     if !self.valid? && @sender.balance <= @amount 
      @status = "rejected" 
      @status = "Transaction rejected. Please check your account balance."
    elsif @status == "pending"
    BankAccount.all.map do | person |
      if person == @sender 
        person.balance -= @amount 
      elsif person == @receiver
        person.balance += @amount
      end
    end
end
