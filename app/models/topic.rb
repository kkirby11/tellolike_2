class Topic < ApplicationRecord
  belongs_to :board
  has_many :description
  validates_presence_of :title, presence: true

end
