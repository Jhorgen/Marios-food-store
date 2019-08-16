class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render :index
  end

  # def new
  #   @product = Product.find(params[:product_id])
  #   @review = @review.reviews.new
  #   render :new
  # end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    binding.pry
    if @product.save
      flash[:notice] = "Review successfully added!"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Review couldn't be added!"
      render :new
    end
  end

  # def edit
  #   @review = Review.find(params[:id])
  #   render :edit
  # end
  #
  # def show
  #   @review = Review.find(params[:id])
  #   render :show
  # end
  #
  # def update
  #   @review= Review.find(params[:id])
  #   if @review.update(review_params)
  #     redirect_to review_path
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to reviews_path
  # end

  private
    def review_params
      params.require(:review).permit(:author, :rating, :content_body)
    end
end
