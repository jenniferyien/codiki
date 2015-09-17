class Category < ActiveRecord::Base
  has_many :articles
  validates :title, presence: true
  validates_length_of :title, maximum: 18
  validates_length_of :summary, maximum: 265
end
