class Cour < ActiveRecord::Base
	attr_accessible :matiere_id, :nom, :professeur_id, :slug, :fichier

	has_attached_file :fichier,
                  :url  => "/assets/cours/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/cours/:id/:style/:basename.:extension"

	validates_attachment_content_type :fichier, :content_type => ['application/pdf']

	belongs_to :matiere
end
