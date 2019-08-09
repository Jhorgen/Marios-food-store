class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render :index
  end

  def new
    @review = Product.find(params[:product_id])
    @review = @review.reviews.new
    render :new
  end

  def create
    @review = Review.find(params[:id])
    @review = @review.reviews.new(review_params)
    binding.pry
    if @review.save
      flash[:notice] = "Review successfully added!"
      redirect_to review_path(id: params[:id])
    else
      flash[:alert] = "Review couldn't be added!"
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    render :edit
  end

  def show
    @review = Review.find(params[:id])
    render :show
  end

  def update
    @review= Review.find(params[:id])
    if @review.update(review_params)
      redirect_to review_path
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:name, :review_id)
  end

end
