class Favorite < ApplicationRecord
  belongs_to :user_id
  belongs_to :miss_id
end
