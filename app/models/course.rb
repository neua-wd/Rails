class Course < ApplicationRecord
  has_many :groups

  has_many :subscriptions
  has_many :users, through: :subscriptions
end
