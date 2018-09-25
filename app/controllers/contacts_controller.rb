class ContactsController < ApplicationController

    def index
    end

    def new
    end


    def create
        @contact = Contact.new(params[:contacts].permit(:name, :email))
        if @contact.save 
            flash[:success] = "Created Successfully"
            redirect_to '/contact_list_mappings/new'
        else
            flash[:failed] = @contact.errors.messages.to_s
            redirect_to '/contacts/new'
        end
    end

end
