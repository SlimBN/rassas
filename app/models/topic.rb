class Topic < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :university_id

  belongs_to :user
  belongs_to :university

  has_many :answers
end
