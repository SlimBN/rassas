class Professeur < ActiveRecord::Base
  attr_accessible :name, :slug

  has_many :matieres
end
