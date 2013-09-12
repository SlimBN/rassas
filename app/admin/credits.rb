ActiveAdmin.register Credit do
    index do
	    column "ID de l'operation", :id
	    column "Utilisateur", :user

	    column :balance

	    column "Montant de l'operation", :value
	    column "Ajoute le", :created_at
	    default_actions
	end
end
