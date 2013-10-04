class Role < ActiveRecord::Base
  attr_accessible :name
  has_many :users
  scope :doctor_role, lambda {  where(name: "doctor")  }
  
  
  def self.roles
      all.collect {|role|   [role.name, role.id] }.compact
  end
  
  
end
