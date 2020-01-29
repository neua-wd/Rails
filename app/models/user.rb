class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :instructor_profile, dependent: :destroy
  has_one :student_profile, dependent: :destroy

  has_many :group_additions
  has_many :groups, through: :group_additions

  has_many :subscriptions
  has_many :courses, through: :subscriptions
end
