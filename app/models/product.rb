class Product < ActiveRecord::Base
  belongs_to :category
  has_many :reviews
  # 16/10/12 DH: "Can't mass-assign protected attributes: name, category, description, price" rake error 
  attr_accessible :name, :category, :description, :price
end
