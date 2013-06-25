class Post < ActiveRecord::Base
  attr_accessible :title, :body, :key, :category_id

  belongs_to :category

  validates :title, :presence => true
  validates :body, :presence => true
  before_save :generate_key

  def generate_key
    self.key = SecureRandom.random_number(1000000)
  end



end
