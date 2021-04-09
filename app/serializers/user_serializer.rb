class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest
  has_many :misses
  has_many :replies, through: :misses

  has_many :favorites
  has_many :favoritedListings, :through => :favorites, :source => :listing
end
