class AutocompleteController < ApplicationController
    
    def companies
        if params[:term]
            like  = "%".concat(params[:term].concat("%"))
            companies = Company.where("name like ?", like)
            else
            companies = Company.all
        end
        list = companies.map {|c| Hash[id: c.id, label: c.name, name: c.name]}
        render json: list            
    end
    
    
end
