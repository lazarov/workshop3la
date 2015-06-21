class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :content, :rating, :user_id, presence: true

  LAST_COUNT = 5
  scope :latest, -> { last(LAST_COUNT) }

end
