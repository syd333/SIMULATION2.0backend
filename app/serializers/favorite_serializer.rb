class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :like, :user, :miss

  belongs_to :user
  belongs_to :miss
end
