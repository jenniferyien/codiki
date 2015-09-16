class Contributor < ActiveRecord::Base
  has_many :articles
  has_secure_password
end
