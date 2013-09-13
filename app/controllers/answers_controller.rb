class AnswersController < InheritedResources::Base
	layout "forums"

	def create
		@answer = current_user.answers.build(params[:answer])
		@answer.save!

	    respond_to do |format|
	      #format.js { render :action => '../commandes/commande'}
	      format.html { redirect_to topic_path(Topic.find(@answer.topic_id))}
	    end
	end

end
