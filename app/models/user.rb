class User < ApplicationRecord

  has_many :bookings, dependent: :destroy
  has_many :kittens, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :timeoutable, :trackable

  validates :name, presence: true

end
