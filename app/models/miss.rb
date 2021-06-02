class Miss < ApplicationRecord
    
    belongs_to :user
    has_many :replies, through: :users
    validates :title, :message, presence: true
    
    geocoded_by :address
    after_validation :geocode
   
end
