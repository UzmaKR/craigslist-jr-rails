class Category < ActiveRecord::Base
  attr_accessible :title
  
  has_many :posts
  validates :title, presence: true

end
