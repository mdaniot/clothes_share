class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :deals
  has_many :items
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
