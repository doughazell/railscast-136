class ReviewsController < ApplicationController
  def create
    puts __FILE__ + ":" + __LINE__.to_s
    @review = Review.create!(params[:review])
    flash[:notice] = "Thank you for reviewing this product Mr Douglas"
    respond_to do |format|
      #format.html { puts "Hmmm HTML eh???" }
	  format.html { puts "Hmmm HTML eh???";redirect_to @review.product }
      #format.js  { puts "*** Javascript ***" }
	  format.js
    end
  end
  
end
