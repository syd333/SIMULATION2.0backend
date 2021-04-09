class MissSerializer < ActiveModel::Serializer
  attributes :id, :city, :zip, :lat, :long, :title, :message, :user

  belongs_to :user
  has_many :replies, through: :users
end
