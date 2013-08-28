class Commande < ActiveRecord::Base
  attr_accessible :cour_id, :done, :number_o_pages, :user_id

  belongs_to :cour
  belongs_to :user
end
