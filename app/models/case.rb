class Case < ActiveRecord::Base
  attr_accessible :company_id, :story, :user_id
    belongs_to :user
    belongs_to :company   
end
