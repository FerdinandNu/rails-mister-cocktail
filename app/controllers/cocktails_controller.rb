class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id].to_i)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(rest_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def rest_params
    params.require(:cocktail).permit(:name)
  end


  # def create
  #   @cocktails = Cocktail.new(cocktail_params)
  #   if @cocktail.save
  #     redirect_to cocktail_path(@cocktail)
  #   else
  #     render :new
  #   end
  # end

  # private

  # def cocktail_params
  #   params.require(:cocktail).permit(:name)
  # end
end
