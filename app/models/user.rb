class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :financial_reports
  
  def after_destroy
    if User.count.zero?
      raise "Can't Delete Last User"
    end
  end
  
end
