class BankAccount
  attr_reader :name
  attr_accessor :balance, :status 
  
  @@all = [ ]
  
  
  
  def initialize(name, balance=1000)
    @name = name 
    
  end 





end
