class CommandesController < InheritedResources::Base
	def index
	    @commandes = Commande.all

	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @commandes }
	    end
	end

	def create
		@commande = current_user.commandes.build(params[:commande])
		@commande.save!

	    respond_to do |format|
	      format.js { render :action => '../commandes/commande'}
	    end
	end

	def destroy

	    @commande = Commande.find(params[:id])
	    @commande.destroy

	    respond_to do |format|
	      format.js { render :action => '../commandes/commande'}
	    end
	end
end
