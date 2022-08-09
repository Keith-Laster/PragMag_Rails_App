class User < ApplicationRecord
  has_many :reviews, dependent: :destroy

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true,
                    format: { with: /\S+@\S+/ },
                    uniqueness: { case_sensative: false }
end
