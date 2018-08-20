class CreatureSerializer < ActiveModel::Serializer
  attributes :id, :common_name, :latin_name, :description, :iucn_status, :habitat, :image
end
