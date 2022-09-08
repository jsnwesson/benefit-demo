class AidApplication < ApplicationRecord
  has_one :primary_member, inverse_of: :aid_application
  has_many :secondary_members, inverse_of: :aid_application, dependent: :destroy
  validates :email,
            format: { with: /\A(.+)@(.+)\z/, message: 'Email invalid' },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }
end
