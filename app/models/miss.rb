class Miss < ApplicationRecord
    belongs_to :user_id
    has_many :replies, through: :users
end
