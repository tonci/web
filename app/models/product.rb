class Product < ActiveRecord::Base
  default_scope :order => 'title'
  
  has_many :line_items
  
  validates :title, :price, :description, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
end
