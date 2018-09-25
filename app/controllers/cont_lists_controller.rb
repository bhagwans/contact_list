class ContListsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def new

    end

    def index
      
    end

    def create
        @cont_list = ContList.new(params[:cont_lists].permit(:name))
        if @cont_list.save 
            flash[:success] = "Created Successfully"
            redirect_to '/contact_list_mappings/new'
        else        
            flash[:failed] = @cont_list.errors.messages.to_s
            redirect_to '/cont_lists/new'
        end
     
    end

    def show
        @contact_list = ContList.find(params[:id])
        render json:  @contact_list.contacts
    end

end
