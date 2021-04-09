class ReplySerializer < ActiveModel::Serializer
  attributes :id, :title, :message, :user_id, :miss_id

  belongs_to :user_id
  belongs_to :miss_id
end
