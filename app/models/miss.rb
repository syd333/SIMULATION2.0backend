class Miss < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :replies, through: :users
    validates :title, :message, presence: true
end
