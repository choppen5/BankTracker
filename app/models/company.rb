class Company < ActiveRecord::Base
    attr_accessible :address, :fax, :name, :phone, :program, :twitter_handler
end
