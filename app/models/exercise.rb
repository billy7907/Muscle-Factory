class Exercise < ApplicationRecord
  belongs_to :group
  has_many :drills, dependent: :destroy

end
