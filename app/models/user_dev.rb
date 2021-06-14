class UserDev < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    #:locale
    #validates :first_name, :last_name, :email, :password, :password_confirmation, presence: true
end
