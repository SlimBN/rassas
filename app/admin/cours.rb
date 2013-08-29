ActiveAdmin.register Cour do

  index do
    column :nom
    column "Nombre de Pages", :nombre
    column "Ajoute le", :created_at
    default_actions
  end

 form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :matiere
    f.input :nom
    f.input :fichier, :as => :file
    f.input :nombre
  end
  f.buttons
 end

end
