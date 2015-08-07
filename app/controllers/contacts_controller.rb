class ContactsController < ApplicationController
	
	def create
		@contact = Contact.new(contact_params)
		if @contact.save
  	  # flash[:notice] = "La categoria #{@contact.name} fue creada con exito"
  	  redirect_to root_path
  	else
  		# flash[:alert] = "Ha ocurrido un error y la categoria #{@contact.name}, no ha sido almacenado"
    	render :action => 'new'
  	end
	end

	def index
		@contacts = Contact.all.reverse
	end

	private
		def contact_params
  		params.require(:contact).permit(:name,:lastname,:email,:phone,:message)
		end
end
