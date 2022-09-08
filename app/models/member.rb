class Member < ApplicationRecord
  belongs_to :aid_application
  validates :name, presence: true
end
