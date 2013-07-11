class Category < ActiveRecord::Base
  has_many :products
  # 16/10/12 DH: "Can't mass-assign protected attributes: name" rake error 
  attr_accessible :name
end
