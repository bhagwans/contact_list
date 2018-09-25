class ContactListMappingsController < ApplicationController
    
    def new
        @cont_mappings = ContactListMapping.all
    end

    def create
        @clm = ContactListMapping.find_by(params[:contact_list_mappings].permit(:contact_id, :cont_list_id))
        puts "aaaaaaaaaaaaa"
        puts @clm
        if !@clm.nil?
            flash[:failed] = "Selected mapping already exists."
            #redirect_to new_contact_list_mapping_url
        else 
            @contact_list_mapping = ContactListMapping.new(params[:contact_list_mappings].permit(:contact_id, :cont_list_id))
            if @contact_list_mapping.save
                flash[:success] = "Created Successfully"
                #redirect_to new_contact_list_mapping_url
            else
                flash[:failed] = "Failed!, Select contact and contact list."
            end 
        end
        redirect_to new_contact_list_mapping_url
    end

end
