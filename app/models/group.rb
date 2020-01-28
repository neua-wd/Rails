class Group < ApplicationRecord
  belongs_to :course

  has_many :group_additions
  has_many :users, through: :group_additions
end
