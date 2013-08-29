ActiveAdmin.register Credit do
    index do
	    column :id
	    column :user
	    column "Nombre de Pages", :value
	    column "Ajoute le", :created_at
	    default_actions
	end
end
