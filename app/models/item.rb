class Item < ApplicationRecord
  TYPES = ['Masculinas', 'Femininas', 'Sapatos masculinos', 'Sapatos femininos']
  belongs_to :user
  has_many :deals, dependent: :destroy
  has_one_attached :photo
  validates :item_type, inclusion: { in: TYPES }
end
