class Board < ApplicationRecord
  has_many :topics
  validates_presence_of :name, presence: true
end


 



