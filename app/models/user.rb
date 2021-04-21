class User < ApplicationRecord
    has_many :misses, dependent: :destroy
    has_many :replies, through: :misses

    has_many :favorites, dependent: :destroy
    has_many :favoritedListings, :through => :favorites, :source => :listing

    has_secure_password
    validates :email, :password, presence: true
    validates :terms_of_service, acceptance: true
end
