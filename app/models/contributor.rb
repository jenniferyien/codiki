class Contributor < ActiveRecord::Base
  has_many :articles
  has_secure_password

  validates :first_name, :last_name, :email, presence: true
  validates_length_of :password, minimum: 5
end
