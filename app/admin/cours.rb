ActiveAdmin.register Cour do

  index do
    column :name
    column :matiere
    column "Nombre de Pages", :nombre
    column "Ajoute le", :created_at
    default_actions
  end

 form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :matiere
    f.input :name
    f.input :fichier, :as => :file
    f.input :preview, :as => :file
  end
  f.buttons
 end

end
