class Cour < ActiveRecord::Base
	attr_accessible :matiere_id, :name, :professeur_id, :slug, :fichier, :nombre, :preview

	has_attached_file :fichier,
                  :url  => "/assets/cours/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/cours/:id/:style/:basename.:extension"

	validates_attachment_content_type :fichier, :content_type => ['application/pdf']

	has_attached_file :preview,
                  :url  => "/assets/cours/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/cours/:id/:style/:basename.:extension"

	validates_attachment_content_type :preview, :content_type => ['application/pdf']

	belongs_to :matiere

	has_many :commandes
end
