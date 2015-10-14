class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]

  def index
    @restaurant = Restaurant.all
  end

  def show
  end


  def new
     @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end

#   before_action :set_task, only: [:show, :edit, :update, :destroy]
#   def index
#     @article = Article.all
#   end

#   def show
#   end


#   def new
#      @article = Article.new
#   end


#   def create
#     @article = Article.create(article_params)
#     redirect_to article_path
#   end

#   def edit
#   end

#   def update
#     @article.update(article_params)
#     redirect_to article_path

#   end

#   def destroy
#     @article.destroy
#     redirect_to article_path
#   end


# private
#   def article_params
#   params.require(:article).permit(:title, :content)
#   end

#   def set_task
#   @article = Article.find(params[:id])
#   end

# end
