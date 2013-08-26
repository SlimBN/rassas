class Annee < ActiveRecord::Base
  attr_accessible :name, :order, :slug, :university_id

  has_many :matieres

  belongs_to :university
end
