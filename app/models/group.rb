class Group < ApplicationRecord

  has_many :exercises, dependent: :destroy
end
