class ParentsController < InheritedResources::Base

	def show
		@university = University.find(params[:id])
	end

end
