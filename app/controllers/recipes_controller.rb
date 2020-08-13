class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    session_notice(:danger, 'You must be logged in!') unless logged_in?
    @recipe = Recipe.new
    5.times { @recipe.instructions.build }
    10.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user

    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit
    session_notice(:danger, 'You must be logged in!') unless logged_in?
    @recipe = Recipe.find(params[:id])

    if logged_in?
      session_notice(:danger, 'Wrong User') unless equal_with_current_user?(@recipe.user)
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    session_notice(:danger, 'You must be logged in!') unless logged_in?
    recipe = Recipe.find(params[:id])

    if equal_with_current_user?(recipe.user)
      recipe.destroy
      redirect_to recipes_path
    else
      session_notice(:danger, 'Wrong User')
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description,
                                   instructions_attributes: [:id, :body, :destroy],
                                   ingredients_attributes: [:id, :body, :destroy])
  end

end
