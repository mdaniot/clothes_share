class Item < ApplicationRecord
  belongs_to :user
  has_many :deals, dependent: :destroy
  has_one_attached :photo
end
