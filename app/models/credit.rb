class Credit < ActiveRecord::Base
  attr_accessible :user_id, :value

  belongs_to :user
end
