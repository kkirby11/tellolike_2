class Description < ApplicationRecord
  belongs_to :topic
  validates_presence_of :title, presence: true

end
