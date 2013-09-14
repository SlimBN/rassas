class CommandesController < InheritedResources::Base
	before_filter :authenticate_user!
	
	def index
	    @commandes = Commande.all

	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @commandes }
	    end
	end	

	def print
		@commande = Commande.find(params[:id])
		@cour = Cour.find(@commande.cour_id)
		@credit = Credit.where("user_id = ?", @commande.user.id).sum('value')

		respond_to do |format|
			# print @cour.fichier.path()
			@newcredit = 0 - (@cour.nombre * 40)
			@balance = @credit + @newcredit
			suckthis = Credit.new(:user_id => @commande.user.id, :value => @newcredit, :balance => @balance)
			suckthis.save
			@commande.destroy

			#format.js { render :action => '../commandes/print'}
	      	format.html { redirect_to admin_commandes_path() }
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
