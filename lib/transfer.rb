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
      if receiver.balance.valid? == true && sender.balance.valid? == true
        true
      else
        false
      end
    end
  
    def interviewers
        self.interviews.collect do |interview|
            interview.interviewer
        end
    end
  
  
  
  
  
  
  
  
  
end
