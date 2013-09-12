class Credit < ActiveRecord::Base
  attr_accessible :user_id, :value, :balance

  belongs_to :user
end
