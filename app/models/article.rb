class Article < ActiveRecord::Base
  belongs_to :contributor
  belongs_to :category
end
