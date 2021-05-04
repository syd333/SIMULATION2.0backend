class MissSerializer < ActiveModel::Serializer
  attributes :id, :title, :message, :user, :lat, :long

end
