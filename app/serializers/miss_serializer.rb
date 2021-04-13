class MissSerializer < ActiveModel::Serializer
  attributes :id, :city, :zip, :lat, :long, :title, :message, :user

end
