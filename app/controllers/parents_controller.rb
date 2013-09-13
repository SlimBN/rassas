class ParentsController < InheritedResources::Base
	layout "forums"

	def show
		@university = University.find(params[:id])
	end

end
