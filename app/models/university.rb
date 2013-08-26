class University < ActiveRecord::Base
  attr_accessible :name, :slug

  has_many :annees, :through => :university_id
end
