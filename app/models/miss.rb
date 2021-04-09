class Miss < ApplicationRecord
    belongs_to :user
    has_many :replies, through: :users
end
