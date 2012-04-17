class Issue < ActiveRecord::Base
  STATUS_OPEN     = "open"
  STATUS_RESOLVED = "resolved"
  STATUS = [STATUS_OPEN, STATUS_RESOLVED]

  FEELING_HAPPY   = "happy"
  FEELING_UNHAPPY = "unhappy"
  FEELING_MAD     = "mad"
  FEELING = [FEELING_HAPPY, FEELING_UNHAPPY, FEELING_MAD]

  attr_accessible :company_id, :story, :user_id, :microposts, :status, :feeling

  belongs_to :user
  belongs_to :company
  has_many  :microposts, :through => :user

  validates :company_id, presence: true
  validates :story, presence: true
  validates_presence_of :status, :feeling

  scope :published_issues, where{ published == true }
end
