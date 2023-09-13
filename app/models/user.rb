class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  validates :name, presence: true
  validates :email, presence: true

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
