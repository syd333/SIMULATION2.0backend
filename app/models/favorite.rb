class Favorite < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :miss, dependent: :destroy
end
