class Category < ActiveRecord::Base
  acts_as_nested_set
  attr_accessible :name, :description, :parent_id
end
