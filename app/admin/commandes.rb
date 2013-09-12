ActiveAdmin.register Commande do


	scope :undone

	index do
		# User.all.each do |user|

		# 	nombre_de_cours = Commande.where('user_id = ?', user.id).count
		# 	nombre_de_pages = Commande.where('user_id = ?', user.id).sum('number_o_pages')
			
		# 	credit = Credit.where('user_id = ?', user.id).sum('value')
			
		# 	prix = nombre_de_pages * 45

		# 		if (prix < credit)
		# 			Commande.where('user_id = ?', user.id).each do |commande|
		# 				column "User", commande.user
		# 				column "cour", Cour.find(commande.cour_id)
		# 			end
					
		# 			#render "index"
		# 		end


	 #  	#column :title do |project|
  #   		#link_to project.title, admin_project_path(project)
  # 		end

  		column "Client", :user, :sortable
  		column "Cours", :cour
  		column "Nombre de Pages", :number_o_pages


      	column "Imprimer" do |fichier|
        	link_to "Imprimer", "#", :onClick => "printPDF('" + Cour.find(fichier.cour_id).fichier.url() + "');"
      	end

      	column "Fini(s)" do |commande|
        	link_to "Fini(s)", print_path(commande.id)
      	end

  		column "Date de La Commande", :created_at
	end
end
