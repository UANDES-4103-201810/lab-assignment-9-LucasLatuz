class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :address
  belongs_to :category
  has_one :address
end
