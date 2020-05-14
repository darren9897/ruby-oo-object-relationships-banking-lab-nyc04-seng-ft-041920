# require_all 'lib'

class Transfer
  attr_reader :money, :sender, :receiver
  attr_accessor :status, :amount
  
  
  def initialize(sender, receiver, money, status = "pending")
   @money = money
   @receiver = receiver
   @sender = sender
   @status = "pending"
   @amount = 50
  end
  
    def valid?
      if receiver.valid?  && sender.valid? 
        true
      else
        false
      end
    end
  
    def execute_transaction()
      self.sender -= self.money
      self.receiver += self.money
      self.status 
      
      
    end
  
  
  
  
  
  
  
  
  
end
