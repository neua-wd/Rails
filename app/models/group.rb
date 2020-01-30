class Group < ApplicationRecord
  belongs_to :course

  has_many :assignments
  has_many :users, through: :assignments
end
