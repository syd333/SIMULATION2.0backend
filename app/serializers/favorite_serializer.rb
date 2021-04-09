class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :like, :user_id, :miss_id

  belongs_to :user_id
  belongs_to :miss_id
end
