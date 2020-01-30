class Course < ApplicationRecord
  has_many :groups

  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions
end
