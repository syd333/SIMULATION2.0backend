class User < ApplicationRecord
    # reverse_geocoded_by :lat, :long do |obj, results|
    #     if geo = results.first 
    #         obj.city = geo.city
    #         obj.zipcode = geo.postal_code
    #         obj.country = geo.country_code
    #     end
    # end

    # reverse_geocoded_by :latitude, :longitude
    # after_validation :reverse_geocode

    has_many :misses, dependent: :destroy
    has_many :replies, through: :misses

    has_many :favorites, dependent: :destroy
    has_many :favoritedListings, :through => :favorites, :source => :listing

    has_secure_password
    validates :email, :password, presence: true
    validates :terms_of_service, acceptance: true


end
