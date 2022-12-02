class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :heroe, serializer: PostheroSerializer
end
