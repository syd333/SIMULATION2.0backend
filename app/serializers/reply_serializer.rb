class ReplySerializer < ActiveModel::Serializer
  attributes :id, :title, :message, :user, :miss

  belongs_to :user
  belongs_to :miss
end