class StudentProfile < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
