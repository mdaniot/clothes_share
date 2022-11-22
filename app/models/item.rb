class Item < ApplicationRecord
  belongs_to :user
  has_many :deals, dependent: :destroy
end
