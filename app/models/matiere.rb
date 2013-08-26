class Matiere < ActiveRecord::Base
  attr_accessible :annee_id, :nom, :order, :professeur_id, :slug

  has_many :cours
  
  belongs_to :professeur
  belongs_to :annee
end
