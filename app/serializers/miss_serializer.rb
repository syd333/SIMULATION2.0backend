class MissSerializer < ActiveModel::Serializer
  attributes :id, :city, :zip, :lat, :long, :title, :message, :user_id

  belongs_to :user_id
  has_many :replies, through: :users
end
