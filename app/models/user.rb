class User < ApplicationRecord
    has_many :misses
    has_many :replies, through: :misses

    has_many :favorites
    has_many :favoritedListings, :through => :favorites, :source => :listing

    has_secure_password
end
