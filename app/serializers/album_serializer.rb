class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :artist
  has_many :songs
end
