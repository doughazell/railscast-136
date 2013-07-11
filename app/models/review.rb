class Review < ActiveRecord::Base
  belongs_to :product
  # 16/10/12 DH: "Can't mass-assign protected attributes: product ..." 'show.html.erb' error 
  attr_accessible :product, :product_id, :name, :content
  
  def initialize(attributes = nil, options = {})
    puts __FILE__ + ":" + __LINE__.to_s
	# Calling "super" without parentheses calls the base class method with ALL the passed args.
	# "super()" calls base class method without args! 
	super
  end
end
