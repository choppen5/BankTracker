class Issue < ActiveRecord::Base
    attr_accessible :company_id, :story, :user_id, :microposts
    
    belongs_to :user
    belongs_to :company
    
    has_many  :microposts, :through => :user
    
    validates :company_id, presence: true
    validates :story, presence: true 
end
