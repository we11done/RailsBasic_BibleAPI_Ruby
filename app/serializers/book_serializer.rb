class BookSerializer < ActiveModel::Serializer
  attributes :name, :verses_count, :chapter_count
  has_many :verses
end
