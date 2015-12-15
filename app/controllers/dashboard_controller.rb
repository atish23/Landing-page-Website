class DashboardController < ApplicationController
  def index
  	@blogs= Blog.all
  	@projects = Project.all
  	@contacts = Contact.find(1)
  end

  def contact
  	@contact = Contact.new
  	if @contact.save
  		redirect_to root_path	
  	end
  end
  private 
  	def contact_params
  		params.require(:contact).permit!
  	end
end
