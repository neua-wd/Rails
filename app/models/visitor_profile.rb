class VisitorProfile < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
