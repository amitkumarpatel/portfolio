class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
    if @contact.save
      respond_to do |format|  
        format.js { render 'pages/show_updated_view'}
      end 
    end
		# respond_to do |format|
  #     if @contact.save
  #       format.html { redirect_to root_path, :flash=> {notice: 'Your message has been submitted.' }}
  #       format.json { render :index, status: :created, location: pages_path }
  #     else
  #       format.html { render :index }
  #       format.json { render json: @contact, status: :unprocessable_entity }
  #     end
  #   end
	end

private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :subject, :comment)
  end
end
