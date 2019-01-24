class Story < ApplicationRecord 
  belongs_to :newsletter

  validates :title, presence: true
  validates :tag, presence: true
  validates :content, presence: true
end
