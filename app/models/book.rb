class Book < ApplicationRecord
  belongs_to :testament
  has_many :verses
end
