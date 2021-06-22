class Miss < ApplicationRecord
    
    belongs_to :user
    has_many :replies, through: :users
    validates :title, :message, presence: true
    validates :terms_of_service, acceptance: true


    # --- in location model:::
      # reverse_geocoded_by :lat, :long do |obj, results|
    #     if geo = results.first 
    #         obj.city = geo.city
    #         obj.zipcode = geo.postal_code
    #         obj.country = geo.country_code
    #     end
    # end
    # reverse_geocoded_by :latitude, :longitude,
    # :address => :location
    # after_validation :reverse_geocode



    # geocoded_by :address
    # after_validation :geocode, :if => :address_changed?
    #def address
        #[street, city, zip, state].compact.join(" ")
    # end
    # def address_changed?
    #     street_changed? ||  city_changed? || state_changed? || zip_changed?
    # end

end
