class BankAccount
  attr_reader :name
  attr_accessor :balance 
  
  @@all = [ ]
  
  
  
  def initialize(name, balance=1000)
    @name = name 
    @balance = balance
  end 





end
