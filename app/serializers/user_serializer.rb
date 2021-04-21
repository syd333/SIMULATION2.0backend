class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :lat, :long

  # reverse_geocoded_by :latitude, :longitude => :lat, :long
  # after_validation :reverse_geocode

  # has_many :misses
  # has_many :replies, through: :misses

  has_many :favorites
  # has_many :favoritedListings, :through => :favorites, :source => :listing
end
