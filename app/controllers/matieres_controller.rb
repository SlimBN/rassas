class MatieresController < InheritedResources::Base
	def show
		@matiere = Matiere.find(params[:id])

		Cour.where('matiere_id = ?', @matiere.id).each do |cour|
			if cour.nombre.nil?

				require 'open-uri'
				io = open('http://localhost:8080/' + cour.fichier.url())

				reader = PDF::Reader.new(io)
				page_number = reader.page_count
				cour.nombre = page_number
				cour.save

			end
		end


		respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @matiere }
	    end
	end
end
