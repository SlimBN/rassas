class Commande < ActiveRecord::Base
  attr_accessible :cour_id, :done, :number_o_pages, :user_id

  scope :undone, where(:done => nil)

  belongs_to :cour
  belongs_to :user
end
