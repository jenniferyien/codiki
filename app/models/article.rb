class Article < ActiveRecord::Base
  belongs_to :contributor
  belongs_to :category
  validates :title, :content, :contributor, :category, presence: true
end
