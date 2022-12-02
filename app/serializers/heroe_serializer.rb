class HeroeSerializer < ActiveModel::Serializer
  attributes :id, :super_name, :name
  has_many :powers, serializer: GetheroepowersSerializer
end
