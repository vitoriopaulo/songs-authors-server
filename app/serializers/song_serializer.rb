class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :authors
end
